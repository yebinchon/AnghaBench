
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;





 int TREE_CODE (int ) ;

 int native_encode_complex (int ,unsigned char*,int) ;
 int native_encode_int (int ,unsigned char*,int) ;
 int native_encode_real (int ,unsigned char*,int) ;
 int native_encode_vector (int ,unsigned char*,int) ;

__attribute__((used)) static int
native_encode_expr (tree expr, unsigned char *ptr, int len)
{
  switch (TREE_CODE (expr))
    {
    case 130:
      return native_encode_int (expr, ptr, len);

    case 129:
      return native_encode_real (expr, ptr, len);

    case 131:
      return native_encode_complex (expr, ptr, len);

    case 128:
      return native_encode_vector (expr, ptr, len);

    default:
      return 0;
    }
}
