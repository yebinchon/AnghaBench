
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ DECL_WEAK (scalar_t__) ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_INVARIANT (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;

__attribute__((used)) static tree
fold_builtin_expect (tree arglist)
{
  tree arg, inner;

  if (arglist == 0)
    return 0;

  arg = TREE_VALUE (arglist);


  if (!TREE_INVARIANT (arg))
    return 0;


  inner = arg;
  STRIP_NOPS (inner);
  if (TREE_CODE (inner) == ADDR_EXPR)
    {
      do
 {
   inner = TREE_OPERAND (inner, 0);
 }
      while (TREE_CODE (inner) == COMPONENT_REF
      || TREE_CODE (inner) == ARRAY_REF);
      if (DECL_P (inner) && DECL_WEAK (inner))
 return 0;
    }


  return arg;
}
