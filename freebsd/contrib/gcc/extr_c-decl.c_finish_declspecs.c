
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_declspecs {scalar_t__ type; int typespec_word; int default_int_p; scalar_t__ complex_p; scalar_t__ unsigned_p; scalar_t__ signed_p; scalar_t__ short_p; scalar_t__ long_long_p; scalar_t__ long_p; scalar_t__ explicit_signed_p; } ;


 scalar_t__ NULL_TREE ;
 scalar_t__ boolean_type_node ;
 void* build_complex_type (scalar_t__) ;
 scalar_t__ char_type_node ;
 scalar_t__ complex_double_type_node ;
 scalar_t__ complex_float_type_node ;
 scalar_t__ complex_long_double_type_node ;
 int cts_none ;

 scalar_t__ dfloat128_type_node ;
 scalar_t__ dfloat32_type_node ;
 scalar_t__ dfloat64_type_node ;
 scalar_t__ double_type_node ;
 scalar_t__ float_type_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ integer_type_node ;
 scalar_t__ long_double_type_node ;
 scalar_t__ long_integer_type_node ;
 scalar_t__ long_long_integer_type_node ;
 scalar_t__ long_long_unsigned_type_node ;
 scalar_t__ long_unsigned_type_node ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 scalar_t__ short_integer_type_node ;
 scalar_t__ short_unsigned_type_node ;
 scalar_t__ signed_char_type_node ;
 scalar_t__ unsigned_char_type_node ;
 scalar_t__ unsigned_type_node ;
 scalar_t__ void_type_node ;

struct c_declspecs *
finish_declspecs (struct c_declspecs *specs)
{


  if (specs->type != NULL_TREE)
    {
      gcc_assert (!specs->long_p && !specs->long_long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p
    && !specs->complex_p);
      return specs;
    }






  if (specs->typespec_word == cts_none)
    {
      if (specs->long_p || specs->short_p
   || specs->signed_p || specs->unsigned_p)
 {
   specs->typespec_word = 129;
 }
      else if (specs->complex_p)
 {
   specs->typespec_word = 131;
   if (pedantic)
     pedwarn ("ISO C does not support plain %<complex%> meaning "
       "%<double complex%>");
 }
      else
 {
   specs->typespec_word = 129;
   specs->default_int_p = 1;



 }
    }




  specs->explicit_signed_p = specs->signed_p;


  switch (specs->typespec_word)
    {
    case 128:
      gcc_assert (!specs->long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p
    && !specs->complex_p);
      specs->type = void_type_node;
      break;
    case 136:
      gcc_assert (!specs->long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p
    && !specs->complex_p);
      specs->type = boolean_type_node;
      break;
    case 135:
      gcc_assert (!specs->long_p && !specs->short_p);
      gcc_assert (!(specs->signed_p && specs->unsigned_p));
      if (specs->signed_p)
 specs->type = signed_char_type_node;
      else if (specs->unsigned_p)
 specs->type = unsigned_char_type_node;
      else
 specs->type = char_type_node;
      if (specs->complex_p)
 {
   if (pedantic)
     pedwarn ("ISO C does not support complex integer types");
   specs->type = build_complex_type (specs->type);
 }
      break;
    case 129:
      gcc_assert (!(specs->long_p && specs->short_p));
      gcc_assert (!(specs->signed_p && specs->unsigned_p));
      if (specs->long_long_p)
 specs->type = (specs->unsigned_p
         ? long_long_unsigned_type_node
         : long_long_integer_type_node);
      else if (specs->long_p)
 specs->type = (specs->unsigned_p
         ? long_unsigned_type_node
         : long_integer_type_node);
      else if (specs->short_p)
 specs->type = (specs->unsigned_p
         ? short_unsigned_type_node
         : short_integer_type_node);
      else
 specs->type = (specs->unsigned_p
         ? unsigned_type_node
         : integer_type_node);
      if (specs->complex_p)
 {
   if (pedantic)
     pedwarn ("ISO C does not support complex integer types");
   specs->type = build_complex_type (specs->type);
 }
      break;
    case 130:
      gcc_assert (!specs->long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p);
      specs->type = (specs->complex_p
       ? complex_float_type_node
       : float_type_node);
      break;
    case 131:
      gcc_assert (!specs->long_long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p);
      if (specs->long_p)
 {
   specs->type = (specs->complex_p
    ? complex_long_double_type_node
    : long_double_type_node);
 }
      else
 {
   specs->type = (specs->complex_p
    ? complex_double_type_node
    : double_type_node);
 }
      break;
    case 133:
    case 132:
    case 134:
      gcc_assert (!specs->long_p && !specs->long_long_p && !specs->short_p
    && !specs->signed_p && !specs->unsigned_p && !specs->complex_p);
      if (specs->typespec_word == 133)
 specs->type = dfloat32_type_node;
      else if (specs->typespec_word == 132)
 specs->type = dfloat64_type_node;
      else
 specs->type = dfloat128_type_node;
      break;
    default:
      gcc_unreachable ();
    }

  return specs;
}
