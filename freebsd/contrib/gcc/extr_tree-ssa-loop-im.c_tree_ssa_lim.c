
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;


 int determine_invariantness () ;
 int determine_lsm (struct loops*) ;
 int move_computations () ;
 int tree_ssa_lim_finalize () ;
 int tree_ssa_lim_initialize (struct loops*) ;

void
tree_ssa_lim (struct loops *loops)
{
  tree_ssa_lim_initialize (loops);



  determine_invariantness ();




  determine_lsm (loops);


  move_computations ();

  tree_ssa_lim_finalize ();
}
