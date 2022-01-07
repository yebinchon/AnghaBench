
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int CDI_POST_DOMINATORS ;
 int branch_prob () ;
 scalar_t__ flag_branch_probabilities ;
 scalar_t__ flag_profile_values ;
 scalar_t__ flag_value_profile_transformations ;
 int free_dominance_info (int ) ;
 int value_profile_transformations () ;

__attribute__((used)) static unsigned int
tree_profiling (void)
{
  branch_prob ();
  if (flag_branch_probabilities
      && flag_profile_values
      && flag_value_profile_transformations)
    value_profile_transformations ();



  free_dominance_info (CDI_DOMINATORS);
  free_dominance_info (CDI_POST_DOMINATORS);
  return 0;
}
