
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct block {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
struct TYPE_2__ {int la_language; } ;
typedef int LONGEST ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int LA_PRINT_CHAR (unsigned char,struct ui_file*) ;
 int LA_PRINT_STRING (struct ui_file*,char*,unsigned int,unsigned int,int ) ;
 int QUIT ;
 char* SYMBOL_PRINT_NAME (struct minimal_symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int TYPE_CODE (struct type*) ;
 int TYPE_DOMAIN_TYPE (struct type*) ;
 int TYPE_FIELD_BITPOS (struct type*,unsigned int) ;
 char* TYPE_FIELD_NAME (struct type*,unsigned int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,unsigned int) ;
 int TYPE_LENGTH (struct type*) ;
 unsigned int TYPE_NFIELDS (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 char* VALUE_CONTENTS (int ) ;
 int VAR_DOMAIN ;
 unsigned int VTBL_FNADDR_OFFSET ;
 int addressprint ;
 struct type* builtin_type_void ;
 struct type* check_typedef (struct type*) ;
 int common_val_print (struct value*,struct ui_file*,int,int,int,int) ;
 int cp_is_vtbl_member (struct type*) ;
 int cp_is_vtbl_ptr_type (struct type*) ;
 int cp_print_class_member (char*,int ,struct ui_file*,char*) ;
 int cp_print_class_method (char*,struct type*,struct ui_file*) ;
 int cp_print_value_fields (struct type*,struct type*,char*,int,int ,struct ui_file*,int,int,int,int *,int ) ;
 TYPE_1__* current_language ;
 int demangle ;
 int error (char*,...) ;
 int extract_typed_address (char*,struct type*) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int gdb_flush (struct ui_file*) ;
 int language_m2 ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (int ) ;
 struct type* lookup_pointer_type (struct type*) ;
 struct symbol* lookup_symbol (int ,struct block*,int ,int*,int *) ;
 int output_format ;
 int prettyprint_arrays ;
 int print_address_demangle (int ,struct ui_file*,int ) ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int print_floating (char*,struct type*,struct ui_file*) ;
 int print_function_pointer_address (int ,struct ui_file*) ;
 int print_longest (struct ui_file*,char,int ,int) ;
 unsigned int print_max ;
 int print_scalar_formatted (char*,struct type*,int,int ,struct ui_file*) ;
 int print_spaces_filtered (int,struct ui_file*) ;
 int stop_print_at_null ;
 int type_print (struct type*,char*,struct ui_file*,int) ;
 int unionprint ;
 int unpack_long (struct type*,char*) ;
 int unpack_pointer (struct type*,char*) ;
 int val_print_array_elements (struct type*,char*,int ,struct ui_file*,int,int,int,int,unsigned int) ;
 unsigned int val_print_string (int ,int,int,struct ui_file*) ;
 int val_print_type_code_int (struct type*,char*,struct ui_file*) ;
 int value_addr (struct value*) ;
 struct value* value_at (struct type*,int ,int *) ;
 int vtblprint ;

int
c_val_print (struct type *type, char *valaddr, int embedded_offset,
      CORE_ADDR address, struct ui_file *stream, int format,
      int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int i = 0;
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  LONGEST val;
  CORE_ADDR addr;

  CHECK_TYPEDEF (type);
  switch (TYPE_CODE (type))
    {
    case 145:
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (TYPE_LENGTH (type) > 0 && TYPE_LENGTH (TYPE_TARGET_TYPE (type)) > 0)
 {
   eltlen = TYPE_LENGTH (elttype);
   len = TYPE_LENGTH (type) / eltlen;
   if (prettyprint_arrays)
     {
       print_spaces_filtered (2 + 2 * recurse, stream);
     }

   if (eltlen == 1 &&
       ((TYPE_CODE (elttype) == 137)
        || ((current_language->la_language == language_m2)
     && (TYPE_CODE (elttype) == 143)))
       && (format == 0 || format == 's'))
     {


       if (stop_print_at_null)
  {
    unsigned int temp_len;


    for (temp_len = 0;
         (valaddr + embedded_offset)[temp_len]
         && temp_len < len && temp_len < print_max;
         temp_len++);
    len = temp_len;
  }

       LA_PRINT_STRING (stream, valaddr + embedded_offset, len, eltlen, 0);
       i = len;
     }
   else
     {
       fprintf_filtered (stream, "{");


       if (cp_is_vtbl_ptr_type (elttype))
  {
    i = 1;
    fprintf_filtered (stream, "%d vtable entries", len - 1);
  }
       else
  {
    i = 0;
  }
       val_print_array_elements (type, valaddr + embedded_offset, address, stream,
         format, deref_ref, recurse, pretty, i);
       fprintf_filtered (stream, "}");
     }
   break;
 }

      addr = address;
      goto print_unpacked_pointer;

    case 134:
      if (format && format != 's')
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
   break;
 }
      if (vtblprint && cp_is_vtbl_ptr_type (type))
 {



   CORE_ADDR addr
     = extract_typed_address (valaddr + embedded_offset, type);
   print_function_pointer_address (addr, stream);
   break;
 }
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (TYPE_CODE (elttype) == 135)
 {
   cp_print_class_method (valaddr + embedded_offset, type, stream);
 }
      else if (TYPE_CODE (elttype) == 136)
 {
   cp_print_class_member (valaddr + embedded_offset,
     TYPE_DOMAIN_TYPE (TYPE_TARGET_TYPE (type)),
     stream, "&");
 }
      else
 {
   addr = unpack_pointer (type, valaddr + embedded_offset);
 print_unpacked_pointer:

   if (TYPE_CODE (elttype) == 138)
     {

       print_function_pointer_address (addr, stream);

       return (0);
     }

   if (addressprint && format != 's')
     {
       print_address_numeric (addr, 1, stream);
     }





   if (TYPE_LENGTH (elttype) == 1
       && TYPE_CODE (elttype) == 137
       && (format == 0 || format == 's')
       && addr != 0)
     {
       i = val_print_string (addr, -1, TYPE_LENGTH (elttype), stream);
     }
   else if (cp_is_vtbl_member (type))
     {

       CORE_ADDR vt_address = unpack_pointer (type, valaddr + embedded_offset);

       struct minimal_symbol *msymbol =
       lookup_minimal_symbol_by_pc (vt_address);
       if ((msymbol != ((void*)0)) &&
    (vt_address == SYMBOL_VALUE_ADDRESS (msymbol)))
  {
    fputs_filtered (" <", stream);
    fputs_filtered (SYMBOL_PRINT_NAME (msymbol), stream);
    fputs_filtered (">", stream);
  }
       if (vt_address && vtblprint)
  {
    struct value *vt_val;
    struct symbol *wsym = (struct symbol *) ((void*)0);
    struct type *wtype;
    struct block *block = (struct block *) ((void*)0);
    int is_this_fld;

    if (msymbol != ((void*)0))
      wsym = lookup_symbol (DEPRECATED_SYMBOL_NAME (msymbol), block,
       VAR_DOMAIN, &is_this_fld, ((void*)0));

    if (wsym)
      {
        wtype = SYMBOL_TYPE (wsym);
      }
    else
      {
        wtype = TYPE_TARGET_TYPE (type);
      }
    vt_val = value_at (wtype, vt_address, ((void*)0));
    common_val_print (vt_val, stream, format,
        deref_ref, recurse + 1, pretty);
    if (pretty)
      {
        fprintf_filtered (stream, "\n");
        print_spaces_filtered (2 + 2 * recurse, stream);
      }
  }
     }




   return i;
 }
      break;

    case 136:
      error ("not implemented: member type in c_val_print");
      break;

    case 132:
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (TYPE_CODE (elttype) == 136)
 {
   cp_print_class_member (valaddr + embedded_offset,
     TYPE_DOMAIN_TYPE (elttype),
     stream, "");
   break;
 }
      if (addressprint)
 {
   CORE_ADDR addr
     = extract_typed_address (valaddr + embedded_offset, type);
   fprintf_filtered (stream, "@");
   print_address_numeric (addr, 1, stream);
   if (deref_ref)
     fputs_filtered (": ", stream);
 }

      if (deref_ref)
 {
   if (TYPE_CODE (elttype) != 130)
     {
       struct value *deref_val =
       value_at
       (TYPE_TARGET_TYPE (type),
        unpack_pointer (lookup_pointer_type (builtin_type_void),
          valaddr + embedded_offset),
        ((void*)0));
       common_val_print (deref_val, stream, format, deref_ref,
    recurse, pretty);
     }
   else
     fputs_filtered ("???", stream);
 }
      break;

    case 129:
      if (recurse && !unionprint)
 {
   fprintf_filtered (stream, "{...}");
   break;
 }

    case 131:

      if (vtblprint && cp_is_vtbl_ptr_type (type))
 {



   int offset = (embedded_offset +
   TYPE_FIELD_BITPOS (type, VTBL_FNADDR_OFFSET) / 8);
   struct type *field_type = TYPE_FIELD_TYPE (type, VTBL_FNADDR_OFFSET);
   CORE_ADDR addr
     = extract_typed_address (valaddr + offset, field_type);

   print_function_pointer_address (addr, stream);
 }
      else
 cp_print_value_fields (type, type, valaddr, embedded_offset, address, stream, format,
          recurse, pretty, ((void*)0), 0);
      break;

    case 141:
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
   break;
 }
      len = TYPE_NFIELDS (type);
      val = unpack_long (type, valaddr + embedded_offset);
      for (i = 0; i < len; i++)
 {
   QUIT;
   if (val == TYPE_FIELD_BITPOS (type, i))
     {
       break;
     }
 }
      if (i < len)
 {
   fputs_filtered (TYPE_FIELD_NAME (type, i), stream);
 }
      else
 {
   print_longest (stream, 'd', 0, val);
 }
      break;

    case 138:
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
   break;
 }


      fprintf_filtered (stream, "{");
      type_print (type, "", stream, -1);
      fprintf_filtered (stream, "} ");

      print_address_demangle (address, stream, demangle);
      break;

    case 144:
      format = format ? format : output_format;
      if (format)
 print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
      else
 {
   val = unpack_long (type, valaddr + embedded_offset);
   if (val == 0)
     fputs_filtered ("false", stream);
   else if (val == 1)
     fputs_filtered ("true", stream);
   else
     print_longest (stream, 'd', 0, val);
 }
      break;

    case 133:
    case 137:
      format = format ? format : output_format;
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
 }
      else
 {
   val_print_type_code_int (type, valaddr + embedded_offset, stream);




   if (TYPE_LENGTH (type) == 1)
     {
       fputs_filtered (" ", stream);
       LA_PRINT_CHAR ((unsigned char) unpack_long (type, valaddr + embedded_offset),
        stream);
     }
 }
      break;

    case 143:
      format = format ? format : output_format;
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
 }
      else
 {
   val = unpack_long (type, valaddr + embedded_offset);
   if (TYPE_UNSIGNED (type))
     fprintf_filtered (stream, "%u", (unsigned int) val);
   else
     fprintf_filtered (stream, "%d", (int) val);
   fputs_filtered (" ", stream);
   LA_PRINT_CHAR ((unsigned char) val, stream);
 }
      break;

    case 139:
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
 }
      else
 {
   print_floating (valaddr + embedded_offset, type, stream);
 }
      break;

    case 135:
      {
 struct value *v = value_at (type, address, ((void*)0));
 cp_print_class_method (VALUE_CONTENTS (value_addr (v)),
          lookup_pointer_type (type), stream);
 break;
      }

    case 128:
      fprintf_filtered (stream, "void");
      break;

    case 140:
      fprintf_filtered (stream, "<error type>");
      break;

    case 130:



      fprintf_filtered (stream, "<incomplete type>");
      break;

    case 142:
      if (format)
 print_scalar_formatted (valaddr + embedded_offset,
    TYPE_TARGET_TYPE (type),
    format, 0, stream);
      else
 print_floating (valaddr + embedded_offset, TYPE_TARGET_TYPE (type),
   stream);
      fprintf_filtered (stream, " + ");
      if (format)
 print_scalar_formatted (valaddr + embedded_offset
    + TYPE_LENGTH (TYPE_TARGET_TYPE (type)),
    TYPE_TARGET_TYPE (type),
    format, 0, stream);
      else
 print_floating (valaddr + embedded_offset
   + TYPE_LENGTH (TYPE_TARGET_TYPE (type)),
   TYPE_TARGET_TYPE (type),
   stream);
      fprintf_filtered (stream, " * I");
      break;

    default:
      error ("Invalid C/C++ type code %d in symbol table.", TYPE_CODE (type));
    }
  gdb_flush (stream);
  return (0);
}
