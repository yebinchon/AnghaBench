
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int ada_vax_float_type_suffix (struct type*) ;
 int error (char*) ;
 struct value* get_var_value (char*,int ) ;

struct value *
ada_vax_float_print_function (struct type *type)
{
  switch (ada_vax_float_type_suffix (type))
    {
    case 'F':
      return get_var_value ("DEBUG_STRING_F", 0);
    case 'D':
      return get_var_value ("DEBUG_STRING_D", 0);
    case 'G':
      return get_var_value ("DEBUG_STRING_G", 0);
    default:
      error ("invalid VAX floating-point type");
    }
}
