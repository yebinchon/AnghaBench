
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* die_left; struct TYPE_7__* die_right; struct TYPE_7__* die_parent; struct TYPE_7__* die_child; } ;
typedef TYPE_1__* Dwarf_P_Die ;


 int assert (int ) ;

void
_dwarf_die_link(Dwarf_P_Die die, Dwarf_P_Die parent, Dwarf_P_Die child,
    Dwarf_P_Die left_sibling, Dwarf_P_Die right_sibling)
{
 Dwarf_P_Die last_child;

 assert(die != ((void*)0));

 if (parent) {


  if (die->die_parent) {
   if (die->die_parent != parent) {
    if (die->die_parent->die_child == die)
     die->die_parent->die_child = ((void*)0);
    die->die_parent = ((void*)0);
                     }
  }


  last_child = parent->die_child;
  if (last_child) {
   while (last_child->die_right != ((void*)0))
    last_child = last_child->die_right;
  }


  die->die_parent = parent;






  if (last_child) {
   assert(last_child->die_right == ((void*)0));
   last_child->die_right = die;
   die->die_left = last_child;
  } else
   parent->die_child = die;
 }

 if (child) {


  if (die->die_child) {
   if (die->die_child != child) {
    die->die_child->die_parent = ((void*)0);
    die->die_child = ((void*)0);
   }
  }


  die->die_child = child;
  child->die_parent = die;
 }

 if (left_sibling) {


  if (die->die_left) {
   if (die->die_left != left_sibling) {
    die->die_left->die_right = ((void*)0);
    die->die_left = ((void*)0);
   }
  }


  die->die_left = left_sibling;
  left_sibling->die_right = die;
 }

 if (right_sibling) {


  if (die->die_right) {
   if (die->die_right != right_sibling) {
    die->die_right->die_left = ((void*)0);
    die->die_right = ((void*)0);
   }
  }


  die->die_right = right_sibling;
  right_sibling->die_left = die;
 }
}
