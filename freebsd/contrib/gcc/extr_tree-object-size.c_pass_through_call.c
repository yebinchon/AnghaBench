
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
 scalar_t__ BUILT_IN_NORMAL ;
 scalar_t__ DECL_BUILT_IN_CLASS (scalar_t__) ;
 int DECL_FUNCTION_CODE (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;

__attribute__((used)) static tree
pass_through_call (tree call)
{
  tree callee = get_callee_fndecl (call);
  tree arglist = TREE_OPERAND (call, 1);

  if (callee
      && DECL_BUILT_IN_CLASS (callee) == BUILT_IN_NORMAL)
    switch (DECL_FUNCTION_CODE (callee))
      {
      case 141:
      case 139:
      case 137:
      case 133:
      case 129:
      case 135:
      case 131:
      case 140:
      case 138:
      case 136:
      case 132:
      case 128:
      case 134:
      case 130:
 if (arglist)
   return TREE_VALUE (arglist);
 break;
      default:
 break;
      }

  return NULL_TREE;
}
