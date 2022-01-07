
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GET_MODE_SIZE (int ) ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;
 int build_vector (int ,int ) ;
 int native_interpret_expr (int ,unsigned char*,int) ;
 int tree_cons (int ,int ,int ) ;

__attribute__((used)) static tree
native_interpret_vector (tree type, unsigned char *ptr, int len)
{
  tree etype, elem, elements;
  int i, size, count;

  etype = TREE_TYPE (type);
  size = GET_MODE_SIZE (TYPE_MODE (etype));
  count = TYPE_VECTOR_SUBPARTS (type);
  if (size * count > len)
    return NULL_TREE;

  elements = NULL_TREE;
  for (i = count - 1; i >= 0; i--)
    {
      elem = native_interpret_expr (etype, ptr+(i*size), size);
      if (!elem)
 return NULL_TREE;
      elements = tree_cons (NULL_TREE, elem, elements);
    }
  return build_vector (type, elements);
}
