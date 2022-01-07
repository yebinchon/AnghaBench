
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ build_int_cst (int ,int ) ;
 int no_type_class ;
 int type_to_class (int ) ;

__attribute__((used)) static tree
fold_builtin_classify_type (tree arglist)
{
  if (arglist == 0)
    return build_int_cst (NULL_TREE, no_type_class);

  return build_int_cst (NULL_TREE,
   type_to_class (TREE_TYPE (TREE_VALUE (arglist))));
}
