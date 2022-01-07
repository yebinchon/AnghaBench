
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;
typedef enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;


 int AMD64_INTEGER ;
 int AMD64_NO_CLASS ;
 int AMD64_SSE ;
 int AMD64_X87 ;
 int AMD64_X87UP ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_ENUM ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_PTR ;
 int TYPE_CODE_REF ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_LENGTH (struct type*) ;
 int amd64_classify_aggregate (struct type*,int*) ;

__attribute__((used)) static void
amd64_classify (struct type *type, enum amd64_reg_class class[2])
{
  enum type_code code = TYPE_CODE (type);
  int len = TYPE_LENGTH (type);

  class[0] = class[1] = AMD64_NO_CLASS;



  if ((code == TYPE_CODE_INT || code == TYPE_CODE_ENUM
       || code == TYPE_CODE_PTR || code == TYPE_CODE_REF)
      && (len == 1 || len == 2 || len == 4 || len == 8))
    class[0] = AMD64_INTEGER;


  else if (code == TYPE_CODE_FLT && (len == 4 || len == 8))

    class[0] = AMD64_SSE;
  else if (code == TYPE_CODE_FLT && len == 16)

    class[0] = AMD64_X87, class[1] = AMD64_X87UP;


  else if (code == TYPE_CODE_ARRAY || code == TYPE_CODE_STRUCT
    || code == TYPE_CODE_UNION)
    amd64_classify_aggregate (type, class);
}
