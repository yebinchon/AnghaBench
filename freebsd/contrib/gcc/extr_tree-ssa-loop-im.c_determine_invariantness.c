
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_walk_data {int before_dom_children_before_stmts; } ;


 int ENTRY_BLOCK_PTR ;
 int determine_invariantness_stmt ;
 int fini_walk_dominator_tree (struct dom_walk_data*) ;
 int init_walk_dominator_tree (struct dom_walk_data*) ;
 int memset (struct dom_walk_data*,int ,int) ;
 int walk_dominator_tree (struct dom_walk_data*,int ) ;

__attribute__((used)) static void
determine_invariantness (void)
{
  struct dom_walk_data walk_data;

  memset (&walk_data, 0, sizeof (struct dom_walk_data));
  walk_data.before_dom_children_before_stmts = determine_invariantness_stmt;

  init_walk_dominator_tree (&walk_data);
  walk_dominator_tree (&walk_data, ENTRY_BLOCK_PTR);
  fini_walk_dominator_tree (&walk_data);
}
