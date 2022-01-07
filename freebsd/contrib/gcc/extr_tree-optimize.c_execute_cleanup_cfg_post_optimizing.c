
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_dead_labels () ;
 int cleanup_tree_cfg () ;
 int fold_cond_expr_cond () ;
 int group_case_labels () ;

__attribute__((used)) static unsigned int
execute_cleanup_cfg_post_optimizing (void)
{
  fold_cond_expr_cond ();
  cleanup_tree_cfg ();
  cleanup_dead_labels ();
  group_case_labels ();
  return 0;
}
