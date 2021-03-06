// Seringue Plaque.scad
// Tous droits réservés www.mon-fablab.fr - 2017
// Licence GPLv3 - usage NON COMMERCIAL uniquement
// Contributeurs : X. HINAULT, Y. LE GAL

//$fn = 12;

epp = 6; // epaiseur plaque

rvs = 5/2; // rayon vis fixa

use <RouleVis.scad>;
use <Berceau.scad>;
use <Bercolonne.scad>;

// berceau
// ber_bov() bord a centre vis
// ber_spv() espace entre vis et vis
// ber_y() = largeur en y;

// roul
// roul_bov() bord a centre vis
// roul_spv() espace entre vis et vis
// roul_y() = largeur en y;


//projection() union(){

	translate([5, 10+17,0]) roulevis();
	translate([5+51, 5+155+15 ,0]) rotate([0,0,90]) import("support_moteur_y.stl");

	translate([5+47, 5, 0]) bercolonne();
	translate([5+47, 5+203+15, 0]) bercolonne();

	translate([5+75, 5+156+15, 0]) berceau();
	translate([5+75, 5+156+65+15, 0]) berceau();
	
//}

//translate([31.5, 20, 0]) color("red") cube([37.5,10,43]);
//translate([31.5+37.5, 215, 0]) color("green") cube([39,10,50]);



