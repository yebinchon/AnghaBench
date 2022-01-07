
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_walk_data {int before_dom_children_before_stmts; } ;


 int ENTRY_BLOCK_PTR ;
 int TODO_update_ssa ;
 int fini_walk_dominator_tree (struct dom_walk_data*) ;
 int init_walk_dominator_tree (struct dom_walk_data*) ;
 int loop_commit_inserts () ;
 int memset (struct dom_walk_data*,int ,int) ;
 int move_computations_stmt ;
 scalar_t__ need_ssa_update_p () ;
 int rewrite_into_loop_closed_ssa (int *,int ) ;
 int walk_dominator_tree (struct dom_walk_data*,int ) ;

__attribute__((used)) static void
move_computations (void)
{
  struct dom_walk_data walk_data;

  memset (&walk_data, 0, sizeof (struct dom_walk_data));
  walk_data.before_dom_children_before_stmts = move_computations_stmt;

  init_walk_dominator_tree (&walk_data);
  walk_dominator_tree (&walk_data, ENTRY_BLOCK_PTR);
  fini_walk_dominator_tree (&walk_data);

  loop_commit_inserts ();
  if (need_ssa_update_p ())
    rewrite_into_loop_closed_ssa (((void*)0), TODO_update_ssa);
}
