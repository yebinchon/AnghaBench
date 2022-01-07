
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;






 int NULL_TREE ;

 int TREE_CODE (int ) ;

 int native_interpret_complex (int ,unsigned char*,int) ;
 int native_interpret_int (int ,unsigned char*,int) ;
 int native_interpret_real (int ,unsigned char*,int) ;
 int native_interpret_vector (int ,unsigned char*,int) ;

__attribute__((used)) static tree
native_interpret_expr (tree type, unsigned char *ptr, int len)
{
  switch (TREE_CODE (type))
    {
    case 130:
    case 131:
    case 133:
      return native_interpret_int (type, ptr, len);

    case 129:
      return native_interpret_real (type, ptr, len);

    case 132:
      return native_interpret_complex (type, ptr, len);

    case 128:
      return native_interpret_vector (type, ptr, len);

    default:
      return NULL_TREE;
    }
}
