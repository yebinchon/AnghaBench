
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int ) ;
 int is_gimple_min_invariant (int ) ;

__attribute__((used)) static inline bool
phi_ssa_name_p (tree t)
{
  if (TREE_CODE (t) == SSA_NAME)
    return 1;



  return 0;
}
