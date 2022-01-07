
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amd64_reg_class { ____Placeholder_amd64_reg_class } amd64_reg_class ;


 int AMD64_COMPLEX_X87 ;
 int AMD64_INTEGER ;
 int AMD64_MEMORY ;
 int AMD64_NO_CLASS ;
 int AMD64_SSE ;
 int AMD64_X87 ;
 int AMD64_X87UP ;

__attribute__((used)) static enum amd64_reg_class
amd64_merge_classes (enum amd64_reg_class class1, enum amd64_reg_class class2)
{

  if (class1 == class2)
    return class1;



  if (class1 == AMD64_NO_CLASS)
    return class2;
  if (class2 == AMD64_NO_CLASS)
    return class1;


  if (class1 == AMD64_MEMORY || class2 == AMD64_MEMORY)
    return AMD64_MEMORY;


  if (class1 == AMD64_INTEGER || class2 == AMD64_INTEGER)
    return AMD64_INTEGER;



  if (class1 == AMD64_X87 || class1 == AMD64_X87UP
      || class1 == AMD64_COMPLEX_X87 || class2 == AMD64_X87
      || class2 == AMD64_X87UP || class2 == AMD64_COMPLEX_X87)
    return AMD64_MEMORY;


  return AMD64_SSE;
}
