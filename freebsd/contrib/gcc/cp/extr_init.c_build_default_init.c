
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_NEEDS_CONSTRUCTING (scalar_t__) ;
 scalar_t__ build_zero_init (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static tree
build_default_init (tree type, tree nelts)
{
  if (TYPE_NEEDS_CONSTRUCTING (type)
      || (nelts && TREE_CODE (nelts) != INTEGER_CST))
    return NULL_TREE;



  return build_zero_init (type, nelts, 0);
}
