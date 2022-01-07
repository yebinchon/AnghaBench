
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int handled_component_p (int ) ;
 scalar_t__ is_gimple_id (int ) ;
 int is_gimple_min_invariant (int ) ;

__attribute__((used)) static bool
ccp_decl_initial_min_invariant (tree t)
{
  if (!is_gimple_min_invariant (t))
    return 0;
  if (TREE_CODE (t) == ADDR_EXPR)
    {

      while (1)
 {
   t = TREE_OPERAND (t, 0);
   if (is_gimple_id (t))
     return 1;
   if (!handled_component_p (t))
     return 0;
 }
    }
  return 1;
}
