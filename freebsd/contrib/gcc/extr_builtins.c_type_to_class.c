
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum type_class { ____Placeholder_type_class } type_class ;
 int TREE_CODE (int ) ;
 int TYPE_STRING_FLAG (int ) ;


 int array_type_class ;
 int boolean_type_class ;
 int complex_type_class ;
 int enumeral_type_class ;
 int function_type_class ;
 int integer_type_class ;
 int lang_type_class ;
 int method_type_class ;
 int no_type_class ;
 int offset_type_class ;
 int pointer_type_class ;
 int real_type_class ;
 int record_type_class ;
 int reference_type_class ;
 int string_type_class ;
 int union_type_class ;
 int void_type_class ;

__attribute__((used)) static enum type_class
type_to_class (tree type)
{
  switch (TREE_CODE (type))
    {
    case 128: return void_type_class;
    case 138: return integer_type_class;
    case 140: return enumeral_type_class;
    case 142: return boolean_type_class;
    case 134: return pointer_type_class;
    case 130: return reference_type_class;
    case 135: return offset_type_class;
    case 132: return real_type_class;
    case 141: return complex_type_class;
    case 139: return function_type_class;
    case 136: return method_type_class;
    case 131: return record_type_class;
    case 129:
    case 133: return union_type_class;
    case 143: return (TYPE_STRING_FLAG (type)
       ? string_type_class : array_type_class);
    case 137: return lang_type_class;
    default: return no_type_class;
    }
}
