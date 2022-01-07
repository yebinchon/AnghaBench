
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum type_code { ____Placeholder_type_code } type_code ;


 int CHECK_TYPEDEF (struct type*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* ada_aligned_type (struct type*) ;
 struct type* ada_completed_type (int ) ;
 int ada_get_base_type (struct type*) ;
 scalar_t__ ada_is_aligner_type (struct type*) ;
 int ada_is_array_descriptor (struct type*) ;
 int ada_is_bogus_array_descriptor (struct type*) ;
 int ada_is_fixed_point_type (struct type*) ;
 int ada_is_modular_type (struct type*) ;
 scalar_t__ ada_is_packed_array_type (struct type*) ;
 int ada_is_range_type_name (char*) ;
 int ada_is_vax_floating_type (struct type*) ;
 scalar_t__ ada_modulus (struct type*) ;
 int ada_name_prefix_len (char*) ;
 char* ada_type_name (struct type*) ;
 int c_print_type (struct type*,char*,struct ui_file*,int,int) ;
 char* demangled_type_name (struct type*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int print_array_type (struct type*,struct ui_file*,int,int) ;
 int print_enum_type (struct type*,struct ui_file*) ;
 int print_fixed_point_type (struct type*,struct ui_file*) ;
 int print_func_type (struct type*,struct ui_file*,char*) ;
 int print_range (struct type*,struct ui_file*) ;
 int print_range_type_named (char*,struct ui_file*) ;
 int print_record_type (struct type*,struct ui_file*,int,int) ;
 int print_unchecked_union_type (struct type*,struct ui_file*,int,int) ;
 int print_vax_floating_point_type (struct type*,struct ui_file*) ;

void
ada_print_type (struct type *type0, char *varstring, struct ui_file *stream,
  int show, int level)
{
  enum type_code code;
  int demangled_args;
  struct type *type = ada_completed_type (ada_get_base_type (type0));
  char *type_name = demangled_type_name (type);
  int is_var_decl = (varstring != ((void*)0) && varstring[0] != '\0');

  if (type == ((void*)0))
    {
      if (is_var_decl)
 fprintf_filtered (stream, "%.*s: ",
     ada_name_prefix_len (varstring), varstring);
      fprintf_filtered (stream, "<null type?>");
      return;
    }

  if (show > 0)
    CHECK_TYPEDEF (type);

  if (is_var_decl && TYPE_CODE (type) != 134)
    fprintf_filtered (stream, "%.*s: ",
        ada_name_prefix_len (varstring), varstring);

  if (type_name != ((void*)0) && show <= 0)
    {
      fprintf_filtered (stream, "%.*s",
   ada_name_prefix_len (type_name), type_name);
      return;
    }

  if (ada_is_aligner_type (type))
    ada_print_type (ada_aligned_type (type), "", stream, show, level);
  else if (ada_is_packed_array_type (type))
    print_array_type (type, stream, show, level);
  else
    switch (TYPE_CODE (type))
      {
      default:
 fprintf_filtered (stream, "<");
 c_print_type (type, "", stream, show, level);
 fprintf_filtered (stream, ">");
 break;
      case 132:
 fprintf_filtered (stream, "access ");
 ada_print_type (TYPE_TARGET_TYPE (type), "", stream, show, level);
 break;
      case 130:
 fprintf_filtered (stream, "<ref> ");
 ada_print_type (TYPE_TARGET_TYPE (type), "", stream, show, level);
 break;
      case 137:
 print_array_type (type, stream, show, level);
 break;
      case 133:
 if (ada_is_fixed_point_type (type))
   print_fixed_point_type (type, stream);
 else if (ada_is_vax_floating_type (type))
   print_vax_floating_point_type (type, stream);
 else
   {
     char *name = ada_type_name (type);
     if (!ada_is_range_type_name (name))
       fprintf_filtered (stream, "<%d-byte integer>",
    TYPE_LENGTH (type));
     else
       {
  fprintf_filtered (stream, "range ");
  print_range_type_named (name, stream);
       }
   }
 break;
      case 131:
 if (ada_is_fixed_point_type (type))
   print_fixed_point_type (type, stream);
 else if (ada_is_vax_floating_type (type))
   print_vax_floating_point_type (type, stream);
 else if (ada_is_modular_type (type))
   fprintf_filtered (stream, "mod %ld", (long) ada_modulus (type));
 else
   {
     fprintf_filtered (stream, "range ");
     print_range (type, stream);
   }
 break;
      case 135:
 fprintf_filtered (stream, "<%d-byte float>", TYPE_LENGTH (type));
 break;
      case 136:
 if (show < 0)
   fprintf_filtered (stream, "(...)");
 else
   print_enum_type (type, stream);
 break;
      case 129:
 if (ada_is_array_descriptor (type))
   print_array_type (type, stream, show, level);
 else if (ada_is_bogus_array_descriptor (type))
   fprintf_filtered (stream,
       "array (?) of ? (<mal-formed descriptor>)");
 else
   print_record_type (type, stream, show, level);
 break;
      case 128:
 print_unchecked_union_type (type, stream, show, level);
 break;
      case 134:
 print_func_type (type, stream, varstring);
 break;
      }
}
