
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
typedef TYPE_1__* ipa_reference_local_vars_info_t ;
typedef enum availability { ____Placeholder_availability } availability ;
struct TYPE_4__ {int calls_read_all; int calls_write_all; } ;


 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;
 int ECF_PURE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int call_expr_flags (scalar_t__) ;
 int cgraph_function_body_availability (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (scalar_t__) ;
 int check_rhs_var (TYPE_1__*,scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;

__attribute__((used)) static void
check_call (ipa_reference_local_vars_info_t local, tree call_expr)
{
  int flags = call_expr_flags (call_expr);
  tree operand_list = TREE_OPERAND (call_expr, 1);
  tree operand;
  tree callee_t = get_callee_fndecl (call_expr);
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
      struct cgraph_node* callee = cgraph_node(callee_t);
      avail = cgraph_function_body_availability (callee);
    }

  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    if (local)
      {
 if (flags & ECF_PURE)
   local->calls_read_all = 1;
 else
   {
     local->calls_read_all = 1;
     local->calls_write_all = 1;
   }
      }
}
