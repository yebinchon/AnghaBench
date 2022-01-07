
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPONENT_REF ;
 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;

__attribute__((used)) static tree
decl_for_component_ref (tree x)
{
  do
    {
      x = TREE_OPERAND (x, 0);
    }
  while (x && TREE_CODE (x) == COMPONENT_REF);

  return x && DECL_P (x) ? x : NULL_TREE;
}
