
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NOP_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;
 int build_vector (int ,int ) ;
 int fold_convert_const (int ,int ,int ) ;
 int integer_zero_node ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
build_zero_vector (tree type)
{
  tree elem, list;
  int i, units;

  elem = fold_convert_const (NOP_EXPR, TREE_TYPE (type), integer_zero_node);
  units = TYPE_VECTOR_SUBPARTS (type);

  list = NULL_TREE;
  for (i = 0; i < units; i++)
    list = tree_cons (NULL_TREE, elem, list);
  return build_vector (type, list);
}
