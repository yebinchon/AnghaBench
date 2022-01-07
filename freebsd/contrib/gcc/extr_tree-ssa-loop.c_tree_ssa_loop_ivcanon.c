
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int canonicalize_induction_variables (int ) ;
 int current_loops ;

__attribute__((used)) static unsigned int
tree_ssa_loop_ivcanon (void)
{
  if (!current_loops)
    return 0;

  return canonicalize_induction_variables (current_loops);
}
