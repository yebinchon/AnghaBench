
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
typedef TYPE_1__* funct_state ;
typedef enum availability { ____Placeholder_availability } availability ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;


 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;


 scalar_t__ BUILT_IN_NORMAL ;
 scalar_t__ DECL_BUILT_IN_CLASS (scalar_t__) ;
 int DECL_FUNCTION_CODE (scalar_t__) ;
 int ECF_PURE ;
 scalar_t__ IPA_CONST ;
 void* IPA_NEITHER ;
 void* IPA_PURE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int call_expr_flags (scalar_t__) ;
 int cgraph_function_body_availability (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (scalar_t__) ;
 int check_rhs_var (TYPE_1__*,scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;
 scalar_t__ setjmp_call_p (scalar_t__) ;

__attribute__((used)) static void
check_call (funct_state local, tree call_expr)
{
  int flags = call_expr_flags(call_expr);
  tree operand_list = TREE_OPERAND (call_expr, 1);
  tree operand;
  tree callee_t = get_callee_fndecl (call_expr);
  struct cgraph_node* callee;
  enum availability avail = AVAIL_NOT_AVAILABLE;

  for (operand = operand_list;
       operand != NULL_TREE;
       operand = TREE_CHAIN (operand))
    {
      tree argument = TREE_VALUE (operand);
      check_rhs_var (local, argument);
    }
  if (callee_t)
    {
      callee = cgraph_node(callee_t);
      avail = cgraph_function_body_availability (callee);



      if (setjmp_call_p (callee_t))
 local->pure_const_state = IPA_NEITHER;

      if (DECL_BUILT_IN_CLASS (callee_t) == BUILT_IN_NORMAL)
 switch (DECL_FUNCTION_CODE (callee_t))
   {
   case 129:
   case 128:
     local->pure_const_state = IPA_NEITHER;
     break;
   default:
     break;
   }
    }






  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    {
      if (flags & ECF_PURE)
 {
   if (local->pure_const_state == IPA_CONST)
     local->pure_const_state = IPA_PURE;
 }
      else
 local->pure_const_state = IPA_NEITHER;
    }
  else
    {

      if (flags & ECF_PURE)
 {
   if (local->pure_const_state == IPA_CONST)
     local->pure_const_state = IPA_PURE;
 }
    }
}
