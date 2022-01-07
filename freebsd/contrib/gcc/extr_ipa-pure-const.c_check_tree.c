
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* funct_state ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ EXC_PTR_EXPR ;
 scalar_t__ FILTER_EXPR ;
 scalar_t__ IMAGPART_EXPR ;
 scalar_t__ INDIRECT_REF_P (int ) ;
 scalar_t__ IPA_CONST ;
 void* IPA_NEITHER ;
 scalar_t__ IPA_PURE ;
 scalar_t__ REALPART_EXPR ;
 scalar_t__ SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int check_operand (TYPE_1__*,int ,int) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static void
check_tree (funct_state local, tree t, bool checking_write)
{
  if ((TREE_CODE (t) == EXC_PTR_EXPR) || (TREE_CODE (t) == FILTER_EXPR))
    return;



  if (TREE_THIS_VOLATILE (t))
    {
      local->pure_const_state = IPA_NEITHER;
      return;
    }

  while (TREE_CODE (t) == REALPART_EXPR
  || TREE_CODE (t) == IMAGPART_EXPR
  || handled_component_p (t))
    {
      if (TREE_CODE (t) == ARRAY_REF)
 check_operand (local, TREE_OPERAND (t, 1), 0);
      t = TREE_OPERAND (t, 0);
    }



  if (INDIRECT_REF_P (t))
    {
      check_tree (local, TREE_OPERAND (t, 0), 0);





      if (checking_write)
 {
   local->pure_const_state = IPA_NEITHER;
   return;
 }
      else if (local->pure_const_state == IPA_CONST)
 local->pure_const_state = IPA_PURE;
    }

  if (SSA_VAR_P (t))
    check_operand (local, t, checking_write);
}
