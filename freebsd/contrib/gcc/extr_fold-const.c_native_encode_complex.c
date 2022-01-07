
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_IMAGPART (int ) ;
 int TREE_REALPART (int ) ;
 int native_encode_expr (int ,unsigned char*,int) ;

__attribute__((used)) static int
native_encode_complex (tree expr, unsigned char *ptr, int len)
{
  int rsize, isize;
  tree part;

  part = TREE_REALPART (expr);
  rsize = native_encode_expr (part, ptr, len);
  if (rsize == 0)
    return 0;
  part = TREE_IMAGPART (expr);
  isize = native_encode_expr (part, ptr+rsize, len-rsize);
  if (isize != rsize)
    return 0;
  return rsize + isize;
}
