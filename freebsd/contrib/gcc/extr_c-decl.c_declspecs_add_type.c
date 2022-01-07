
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* tree ;
struct c_typespec {char* spec; scalar_t__ kind; } ;
struct c_declspecs {int non_sc_seen_p; int declspecs_seen_p; int type_seen_p; int deprecated_p; int unavailable_p; char const* type; int long_long_p; int long_p; scalar_t__ typespec_word; int short_p; int signed_p; int unsigned_p; int complex_p; int typedef_p; int tag_defined_p; int explicit_signed_p; int decl_attr; } ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_2__ {int (* decimal_float_supported_p ) () ;} ;


 scalar_t__ C_IS_RESERVED_WORD (char const*) ;
 int C_RID_CODE (char const*) ;
 int C_TYPEDEF_EXPLICITLY_SIGNED (char const*) ;
 int DECL_ATTRIBUTES (char const*) ;
 scalar_t__ ERROR_MARK ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ RID_LAST_MODIFIER ;





 scalar_t__ TREE_CODE (char const*) ;
 scalar_t__ TREE_DEPRECATED (char const*) ;
 scalar_t__ TREE_TYPE (char const*) ;
 scalar_t__ TREE_UNAVAILABLE (char const*) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ cts_bool ;
 scalar_t__ cts_char ;
 scalar_t__ cts_dfloat128 ;
 scalar_t__ cts_dfloat32 ;
 scalar_t__ cts_dfloat64 ;
 scalar_t__ cts_double ;
 scalar_t__ cts_float ;
 scalar_t__ cts_int ;
 scalar_t__ cts_none ;
 scalar_t__ cts_void ;
 scalar_t__ ctsk_tagdef ;
 scalar_t__ ctsk_tagfirstref ;
 scalar_t__ ctsk_typeof ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 int flag_isoc99 ;
 int gcc_unreachable () ;
 int in_system_header ;
 char* lookup_name (char const*) ;
 int pedantic ;
 int pedwarn (char*) ;
 int stub1 () ;
 TYPE_1__ targetm ;
 int warn_long_long ;

struct c_declspecs *
declspecs_add_type (struct c_declspecs *specs, struct c_typespec spec)
{
  tree type = spec.spec;
  specs->non_sc_seen_p = 1;
  specs->declspecs_seen_p = 1;
  specs->type_seen_p = 1;
  if (TREE_DEPRECATED (type))
    specs->deprecated_p = 1;


  if (TREE_UNAVAILABLE (type))
    specs->unavailable_p = 1;



  if (TREE_CODE (type) == IDENTIFIER_NODE && C_IS_RESERVED_WORD (type))
    {
      enum rid i = C_RID_CODE (type);
      if (specs->type)
 {
   error ("two or more data types in declaration specifiers");
   return specs;
 }
      if ((int) i <= (int) RID_LAST_MODIFIER)
 {

   bool dupe = 0;
   switch (i)
     {
     case 132:
       if (specs->long_long_p)
  {
    error ("%<long long long%> is too long for GCC");
    break;
  }
       if (specs->long_p)
  {
    if (specs->typespec_word == cts_double)
      {
        error ("both %<long long%> and %<double%> in "
        "declaration specifiers");
        break;
      }
    if (pedantic && !flag_isoc99 && !in_system_header
        && warn_long_long)
      pedwarn ("ISO C90 does not support %<long long%>");
    specs->long_long_p = 1;
    break;
  }
       if (specs->short_p)
  error ("both %<long%> and %<short%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_void)
  error ("both %<long%> and %<void%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_bool)
  error ("both %<long%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_char)
  error ("both %<long%> and %<char%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_float)
  error ("both %<long%> and %<float%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat32)
  error ("both %<long%> and %<_Decimal32%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat64)
  error ("both %<long%> and %<_Decimal64%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat128)
  error ("both %<long%> and %<_Decimal128%> in "
         "declaration specifiers");
       else
  specs->long_p = 1;
       break;
     case 131:
       dupe = specs->short_p;
       if (specs->long_p)
  error ("both %<long%> and %<short%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_void)
  error ("both %<short%> and %<void%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_bool)
  error ("both %<short%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_char)
  error ("both %<short%> and %<char%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_float)
  error ("both %<short%> and %<float%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_double)
  error ("both %<short%> and %<double%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat32)
                error ("both %<short%> and %<_Decimal32%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat64)
  error ("both %<short%> and %<_Decimal64%> in "
                          "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat128)
  error ("both %<short%> and %<_Decimal128%> in "
         "declaration specifiers");
       else
  specs->short_p = 1;
       break;
     case 130:
       dupe = specs->signed_p;
       if (specs->unsigned_p)
  error ("both %<signed%> and %<unsigned%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_void)
  error ("both %<signed%> and %<void%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_bool)
  error ("both %<signed%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_float)
  error ("both %<signed%> and %<float%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_double)
  error ("both %<signed%> and %<double%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat32)
  error ("both %<signed%> and %<_Decimal32%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat64)
  error ("both %<signed%> and %<_Decimal64%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat128)
  error ("both %<signed%> and %<_Decimal128%> in "
         "declaration specifiers");
       else
  specs->signed_p = 1;
       break;
     case 129:
       dupe = specs->unsigned_p;
       if (specs->signed_p)
  error ("both %<signed%> and %<unsigned%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_void)
  error ("both %<unsigned%> and %<void%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_bool)
  error ("both %<unsigned%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_float)
  error ("both %<unsigned%> and %<float%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_double)
  error ("both %<unsigned%> and %<double%> in "
         "declaration specifiers");
              else if (specs->typespec_word == cts_dfloat32)
  error ("both %<unsigned%> and %<_Decimal32%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat64)
  error ("both %<unsigned%> and %<_Decimal64%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat128)
  error ("both %<unsigned%> and %<_Decimal128%> in "
         "declaration specifiers");
       else
  specs->unsigned_p = 1;
       break;
     case 139:
       dupe = specs->complex_p;
       if (pedantic && !flag_isoc99 && !in_system_header)
  pedwarn ("ISO C90 does not support complex types");
       if (specs->typespec_word == cts_void)
  error ("both %<complex%> and %<void%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_bool)
  error ("both %<complex%> and %<_Bool%> in "
         "declaration specifiers");
              else if (specs->typespec_word == cts_dfloat32)
  error ("both %<complex%> and %<_Decimal32%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat64)
  error ("both %<complex%> and %<_Decimal64%> in "
         "declaration specifiers");
       else if (specs->typespec_word == cts_dfloat128)
  error ("both %<complex%> and %<_Decimal128%> in "
         "declaration specifiers");
       else
  specs->complex_p = 1;
       break;
     default:
       gcc_unreachable ();
     }

   if (dupe)
     error ("duplicate %qE", type);

   return specs;
 }
      else
 {

   if (specs->typespec_word != cts_none)
     {
       error ("two or more data types in declaration specifiers");
       return specs;
     }
   switch (i)
     {
     case 128:
       if (specs->long_p)
  error ("both %<long%> and %<void%> in "
         "declaration specifiers");
       else if (specs->short_p)
  error ("both %<short%> and %<void%> in "
         "declaration specifiers");
       else if (specs->signed_p)
  error ("both %<signed%> and %<void%> in "
         "declaration specifiers");
       else if (specs->unsigned_p)
  error ("both %<unsigned%> and %<void%> in "
         "declaration specifiers");
       else if (specs->complex_p)
  error ("both %<complex%> and %<void%> in "
         "declaration specifiers");
       else
  specs->typespec_word = cts_void;
       return specs;
     case 141:
       if (specs->long_p)
  error ("both %<long%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->short_p)
  error ("both %<short%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->signed_p)
  error ("both %<signed%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->unsigned_p)
  error ("both %<unsigned%> and %<_Bool%> in "
         "declaration specifiers");
       else if (specs->complex_p)
  error ("both %<complex%> and %<_Bool%> in "
         "declaration specifiers");
       else
  specs->typespec_word = cts_bool;
       return specs;
     case 140:
       if (specs->long_p)
  error ("both %<long%> and %<char%> in "
         "declaration specifiers");
       else if (specs->short_p)
  error ("both %<short%> and %<char%> in "
         "declaration specifiers");
       else
  specs->typespec_word = cts_char;
       return specs;
     case 133:
       specs->typespec_word = cts_int;
       return specs;
     case 134:
       if (specs->long_p)
  error ("both %<long%> and %<float%> in "
         "declaration specifiers");
       else if (specs->short_p)
  error ("both %<short%> and %<float%> in "
         "declaration specifiers");
       else if (specs->signed_p)
  error ("both %<signed%> and %<float%> in "
         "declaration specifiers");
       else if (specs->unsigned_p)
  error ("both %<unsigned%> and %<float%> in "
         "declaration specifiers");
       else
  specs->typespec_word = cts_float;
       return specs;
     case 135:
       if (specs->long_long_p)
  error ("both %<long long%> and %<double%> in "
         "declaration specifiers");
       else if (specs->short_p)
  error ("both %<short%> and %<double%> in "
         "declaration specifiers");
       else if (specs->signed_p)
  error ("both %<signed%> and %<double%> in "
         "declaration specifiers");
       else if (specs->unsigned_p)
  error ("both %<unsigned%> and %<double%> in "
         "declaration specifiers");
       else
  specs->typespec_word = cts_double;
       return specs;
     case 137:
     case 136:
     case 138:
       {
  const char *str;
  if (i == 137)
    str = "_Decimal32";
  else if (i == 136)
    str = "_Decimal64";
  else
    str = "_Decimal128";
  if (specs->long_long_p)
    error ("both %<long long%> and %<%s%> in "
    "declaration specifiers", str);
  if (specs->long_p)
    error ("both %<long%> and %<%s%> in "
    "declaration specifiers", str);
  else if (specs->short_p)
    error ("both %<short%> and %<%s%> in "
    "declaration specifiers", str);
  else if (specs->signed_p)
    error ("both %<signed%> and %<%s%> in "
    "declaration specifiers", str);
  else if (specs->unsigned_p)
    error ("both %<unsigned%> and %<%s%> in "
    "declaration specifiers", str);
                else if (specs->complex_p)
                  error ("both %<complex%> and %<%s%> in "
                         "declaration specifiers", str);
  else if (i == 137)
    specs->typespec_word = cts_dfloat32;
  else if (i == 136)
    specs->typespec_word = cts_dfloat64;
  else
    specs->typespec_word = cts_dfloat128;
       }
       if (!targetm.decimal_float_supported_p ())
  error ("decimal floating point not supported for this target");
       if (pedantic)
  pedwarn ("ISO C does not support decimal floating point");
       return specs;
     default:

       break;
     }
 }
    }






  if (specs->type || specs->typespec_word != cts_none
      || specs->long_p || specs->short_p || specs->signed_p
      || specs->unsigned_p || specs->complex_p)
    error ("two or more data types in declaration specifiers");
  else if (TREE_CODE (type) == TYPE_DECL)
    {
      if (TREE_TYPE (type) == error_mark_node)
 ;
      else
 {
   specs->type = TREE_TYPE (type);
   specs->decl_attr = DECL_ATTRIBUTES (type);
   specs->typedef_p = 1;
   specs->explicit_signed_p = C_TYPEDEF_EXPLICITLY_SIGNED (type);
 }
    }
  else if (TREE_CODE (type) == IDENTIFIER_NODE)
    {
      tree t = lookup_name (type);
      if (!t || TREE_CODE (t) != TYPE_DECL)
 error ("%qE fails to be a typedef or built in type", type);
      else if (TREE_TYPE (t) == error_mark_node)
 ;
      else
 specs->type = TREE_TYPE (t);
    }
  else if (TREE_CODE (type) != ERROR_MARK)
    {
      if (spec.kind == ctsk_tagdef || spec.kind == ctsk_tagfirstref)
 specs->tag_defined_p = 1;
      if (spec.kind == ctsk_typeof)
 specs->typedef_p = 1;
      specs->type = type;
    }

  return specs;
}
