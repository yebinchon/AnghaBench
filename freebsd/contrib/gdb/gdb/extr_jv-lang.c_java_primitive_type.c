
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int error (char*,char) ;
 struct type* java_boolean_type ;
 struct type* java_byte_type ;
 struct type* java_char_type ;
 struct type* java_double_type ;
 struct type* java_float_type ;
 struct type* java_int_type ;
 struct type* java_long_type ;
 struct type* java_short_type ;
 struct type* java_void_type ;

struct type *
java_primitive_type (int signature)
{
  switch (signature)
    {
    case 'B':
      return java_byte_type;
    case 'S':
      return java_short_type;
    case 'I':
      return java_int_type;
    case 'J':
      return java_long_type;
    case 'Z':
      return java_boolean_type;
    case 'C':
      return java_char_type;
    case 'F':
      return java_float_type;
    case 'D':
      return java_double_type;
    case 'V':
      return java_void_type;
    }
  error ("unknown signature '%c' for primitive type", (char) signature);
}
