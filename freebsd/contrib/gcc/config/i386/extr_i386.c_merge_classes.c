
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum x86_64_reg_class { ____Placeholder_x86_64_reg_class } x86_64_reg_class ;


 int X86_64_COMPLEX_X87_CLASS ;
 int X86_64_INTEGERSI_CLASS ;
 int X86_64_INTEGER_CLASS ;
 int X86_64_MEMORY_CLASS ;
 int X86_64_NO_CLASS ;
 int X86_64_SSESF_CLASS ;
 int X86_64_SSE_CLASS ;
 int X86_64_X87UP_CLASS ;
 int X86_64_X87_CLASS ;

__attribute__((used)) static enum x86_64_reg_class
merge_classes (enum x86_64_reg_class class1, enum x86_64_reg_class class2)
{

  if (class1 == class2)
    return class1;



  if (class1 == X86_64_NO_CLASS)
    return class2;
  if (class2 == X86_64_NO_CLASS)
    return class1;


  if (class1 == X86_64_MEMORY_CLASS || class2 == X86_64_MEMORY_CLASS)
    return X86_64_MEMORY_CLASS;


  if ((class1 == X86_64_INTEGERSI_CLASS && class2 == X86_64_SSESF_CLASS)
      || (class2 == X86_64_INTEGERSI_CLASS && class1 == X86_64_SSESF_CLASS))
    return X86_64_INTEGERSI_CLASS;
  if (class1 == X86_64_INTEGER_CLASS || class1 == X86_64_INTEGERSI_CLASS
      || class2 == X86_64_INTEGER_CLASS || class2 == X86_64_INTEGERSI_CLASS)
    return X86_64_INTEGER_CLASS;



  if (class1 == X86_64_X87_CLASS
      || class1 == X86_64_X87UP_CLASS
      || class1 == X86_64_COMPLEX_X87_CLASS
      || class2 == X86_64_X87_CLASS
      || class2 == X86_64_X87UP_CLASS
      || class2 == X86_64_COMPLEX_X87_CLASS)
    return X86_64_MEMORY_CLASS;


  return X86_64_SSE_CLASS;
}
