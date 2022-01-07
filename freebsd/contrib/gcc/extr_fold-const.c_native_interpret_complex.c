
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int GET_MODE_SIZE (int ) ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int build_complex (int ,int ,int ) ;
 int native_interpret_expr (int ,unsigned char*,int) ;

__attribute__((used)) static tree
native_interpret_complex (tree type, unsigned char *ptr, int len)
{
  tree etype, rpart, ipart;
  int size;

  etype = TREE_TYPE (type);
  size = GET_MODE_SIZE (TYPE_MODE (etype));
  if (size * 2 > len)
    return NULL_TREE;
  rpart = native_interpret_expr (etype, ptr, size);
  if (!rpart)
    return NULL_TREE;
  ipart = native_interpret_expr (etype, ptr+size, size);
  if (!ipart)
    return NULL_TREE;
  return build_complex (type, rpart, ipart);
}
