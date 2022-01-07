
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int buffer ;


 int BITS_PER_UNIT ;
 int CHAR_BIT ;
 int NULL_TREE ;
 int native_encode_expr (int ,unsigned char*,int) ;
 int native_interpret_expr (int ,unsigned char*,int) ;

__attribute__((used)) static tree
fold_view_convert_expr (tree type, tree expr)
{

  unsigned char buffer[64];
  int len;


  if (CHAR_BIT != 8 || BITS_PER_UNIT != 8)
    return NULL_TREE;

  len = native_encode_expr (expr, buffer, sizeof (buffer));
  if (len == 0)
    return NULL_TREE;

  return native_interpret_expr (type, buffer, len);
}
