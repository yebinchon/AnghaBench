
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
typedef enum availability { ____Placeholder_availability } availability ;


 int AVAIL_NOT_AVAILABLE ;
 int AVAIL_OVERWRITABLE ;
 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 int ECF_MALLOC ;
 int EXPOSED_PARAMETER ;
 int FULL_ESCAPE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int call_expr_flags (scalar_t__) ;
 int cgraph_function_body_availability (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (scalar_t__) ;
 int check_cast (scalar_t__,scalar_t__) ;
 int check_rhs_var (scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;
 scalar_t__ get_canon_type (scalar_t__,int,int) ;
 int mark_interesting_type (scalar_t__,int ) ;
 scalar_t__ void_type_node ;

__attribute__((used)) static bool
check_call (tree call_expr)
{
  int flags = call_expr_flags(call_expr);
  tree operand_list = TREE_OPERAND (call_expr, 1);
  tree operand;
  tree callee_t = get_callee_fndecl (call_expr);
  tree argument;
  struct cgraph_node* callee;
  enum availability avail = AVAIL_NOT_AVAILABLE;

  for (operand = operand_list;
       operand != NULL_TREE;
       operand = TREE_CHAIN (operand))
    {
      tree argument = TREE_VALUE (operand);
      check_rhs_var (argument);
    }

  if (callee_t)
    {
      tree arg_type;
      tree last_arg_type = ((void*)0);
      callee = cgraph_node(callee_t);
      avail = cgraph_function_body_availability (callee);



      if (TYPE_ARG_TYPES (TREE_TYPE (callee_t)))
 {
   operand = operand_list;
   for (arg_type = TYPE_ARG_TYPES (TREE_TYPE (callee_t));
        arg_type && TREE_VALUE (arg_type) != void_type_node;
        arg_type = TREE_CHAIN (arg_type))
     {
       if (operand)
  {
    argument = TREE_VALUE (operand);
    last_arg_type = TREE_VALUE(arg_type);
    check_cast (last_arg_type, argument);
    operand = TREE_CHAIN (operand);
  }
       else



  break;
     }
 }
      else
 {



   operand = operand_list;
   for (arg_type = DECL_ARGUMENTS (callee_t);
        arg_type;
        arg_type = TREE_CHAIN (arg_type))
     {
       if (operand)
  {
    argument = TREE_VALUE (operand);
    last_arg_type = TREE_TYPE(arg_type);
    check_cast (last_arg_type, argument);
    operand = TREE_CHAIN (operand);
  }
       else



  break;
     }
 }



      arg_type = last_arg_type;
      for (;
    operand != NULL_TREE;
    operand = TREE_CHAIN (operand))
 {
   argument = TREE_VALUE (operand);
   if (arg_type)
     check_cast (arg_type, argument);
   else
     {





       tree type = get_canon_type (TREE_TYPE (argument), 0, 0);
       mark_interesting_type (type, FULL_ESCAPE);
     }
 }
    }







  if (avail == AVAIL_NOT_AVAILABLE || avail == AVAIL_OVERWRITABLE)
    {


      for (operand = operand_list;
    operand != NULL_TREE;
    operand = TREE_CHAIN (operand))
 {
   tree type =
     get_canon_type (TREE_TYPE (TREE_VALUE (operand)), 0, 0);
   mark_interesting_type (type, EXPOSED_PARAMETER);
    }

      if (callee_t)
 {
   tree type =
     get_canon_type (TREE_TYPE (TREE_TYPE (callee_t)), 0, 0);
   mark_interesting_type (type, EXPOSED_PARAMETER);
 }
    }
  return (flags & ECF_MALLOC);
}
