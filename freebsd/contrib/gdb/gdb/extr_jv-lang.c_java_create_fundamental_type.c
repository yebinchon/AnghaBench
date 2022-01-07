
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
 struct type* c_create_fundamental_type (struct objfile*,int) ;
 struct type* java_boolean_type ;
 struct type* java_byte_type ;
 struct type* java_char_type ;
 struct type* java_double_type ;
 struct type* java_float_type ;
 struct type* java_int_type ;
 struct type* java_long_type ;
 struct type* java_short_type ;
 struct type* java_void_type ;

__attribute__((used)) static struct type *
java_create_fundamental_type (struct objfile *objfile, int typeid)
{
  switch (typeid)
    {
    case 128:
      return java_void_type;
    case 140:
      return java_boolean_type;
    case 138:
      return java_char_type;
    case 136:
      return java_float_type;
    case 137:
      return java_double_type;
    case 139:
    case 132:
      return java_byte_type;
    case 133:
    case 129:
      return java_short_type;
    case 135:
    case 131:
      return java_int_type;
    case 134:
    case 130:
      return java_long_type;
    }
  return c_create_fundamental_type (objfile, typeid);
}
