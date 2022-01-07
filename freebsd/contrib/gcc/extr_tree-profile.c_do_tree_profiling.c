
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_branch_probabilities ;
 scalar_t__ flag_test_coverage ;
 scalar_t__ profile_arc_flag ;
 int tree_register_profile_hooks () ;
 int tree_register_value_prof_hooks () ;

__attribute__((used)) static bool
do_tree_profiling (void)
{
  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      tree_register_profile_hooks ();
      tree_register_value_prof_hooks ();
      return 1;
    }
  return 0;
}
