
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
typedef int ULONGEST ;
struct TYPE_2__ {int la_language; } ;
typedef int LONGEST ;
typedef void* CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 int HOST_CHAR_BIT ;
 int LA_PRINT_CHAR (unsigned char,struct ui_file*) ;
 int LA_PRINT_STRING (struct ui_file*,char*,unsigned int,int,int ) ;
 int QUIT ;
 char* SYMBOL_PRINT_NAME (struct minimal_symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 void* SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int TARGET_PTR_BIT ;
 int const TYPE_CODE (struct type*) ;
 int const TYPE_CODE_METHOD ;
 int TYPE_DOMAIN_TYPE (struct type*) ;
 int TYPE_FIELD_BITPOS (struct type*,unsigned int) ;
 char* TYPE_FIELD_NAME (struct type*,unsigned int) ;
 struct type* TYPE_FIELD_TYPE (struct type*,unsigned int) ;
 struct type* TYPE_INDEX_TYPE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 unsigned int TYPE_NFIELDS (struct type*) ;
 int TYPE_STUB (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 int VAR_DOMAIN ;
 unsigned int VTBL_FNADDR_OFFSET ;
 int addressprint ;
 int builtin_type_void ;
 struct type* check_typedef (struct type*) ;
 int common_val_print (struct value*,struct ui_file*,int,int,int,int) ;
 TYPE_1__* current_language ;
 int demangle ;
 int error (char*,...) ;
 void* extract_unsigned_integer (char*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int gdb_flush (struct ui_file*) ;
 int get_discrete_bounds (struct type*,int*,int*) ;
 int is_pascal_string_type (struct type*,int*,int*,int*,int*,int *) ;
 int language_m2 ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (void*) ;
 struct type* lookup_pointer_type (int ) ;
 struct symbol* lookup_symbol (int ,struct block*,int ,int*,int *) ;
 int output_format ;
 int pascal_object_is_vtbl_member (struct type*) ;
 int pascal_object_is_vtbl_ptr_type (struct type*) ;
 int pascal_object_print_class_member (char*,int ,struct ui_file*,char*) ;
 int pascal_object_print_class_method (char*,struct type*,struct ui_file*) ;
 int pascal_object_print_value_fields (struct type*,char*,void*,struct ui_file*,int,int,int,int *,int ) ;
 int prettyprint_arrays ;
 int print_address_demangle (void*,struct ui_file*,int ) ;
 int print_address_numeric (void*,int,struct ui_file*) ;
 int print_floating (char*,struct type*,struct ui_file*) ;
 int print_longest (struct ui_file*,char,int ,int) ;
 unsigned int print_max ;
 int print_scalar_formatted (char*,struct type*,int,int ,struct ui_file*) ;
 int print_spaces_filtered (int,struct ui_file*) ;
 int print_type_scalar (struct type*,int,struct ui_file*) ;
 int read_memory (int ,void*,int) ;
 int stop_print_at_null ;
 int type_print (struct type*,char*,struct ui_file*,int) ;
 int unionprint ;
 int unpack_long (struct type*,char*) ;
 void* unpack_pointer (struct type*,char*) ;
 int val_print_array_elements (struct type*,char*,void*,struct ui_file*,int,int,int,int,unsigned int) ;
 unsigned int val_print_string (void*,int,int,struct ui_file*) ;
 int val_print_type_code_int (struct type*,char*,struct ui_file*) ;
 struct value* value_at (struct type*,void*,int *) ;
 int value_bit_index (struct type*,char*,int) ;
 int vtblprint ;
 int xfree (void*) ;
 void* xmalloc (int) ;

int
pascal_val_print (struct type *type, char *valaddr, int embedded_offset,
    CORE_ADDR address, struct ui_file *stream, int format,
    int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int i = 0;
  unsigned len;
  struct type *elttype;
  unsigned eltlen;
  int length_pos, length_size, string_pos;
  int char_size;
  LONGEST val;
  CORE_ADDR addr;

  CHECK_TYPEDEF (type);
  switch (TYPE_CODE (type))
    {
    case 145:
      if (TYPE_LENGTH (type) > 0 && TYPE_LENGTH (TYPE_TARGET_TYPE (type)) > 0)
 {
   elttype = check_typedef (TYPE_TARGET_TYPE (type));
   eltlen = TYPE_LENGTH (elttype);
   len = TYPE_LENGTH (type) / eltlen;
   if (prettyprint_arrays)
     {
       print_spaces_filtered (2 + 2 * recurse, stream);
     }

   if (eltlen == 1 &&
       ((TYPE_CODE (elttype) == 137)
        || ((current_language->la_language == language_m2)
     && (TYPE_CODE (elttype) == 142)))
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

       LA_PRINT_STRING (stream, valaddr + embedded_offset, len, 1, 0);
       i = len;
     }
   else
     {
       fprintf_filtered (stream, "{");


       if (pascal_object_is_vtbl_ptr_type (elttype))
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

    case 135:
      if (format && format != 's')
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
   break;
 }
      if (vtblprint && pascal_object_is_vtbl_ptr_type (type))
 {




   print_address_demangle (extract_unsigned_integer (valaddr + embedded_offset, TYPE_LENGTH (type)),
      stream, demangle);
   break;
 }
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (TYPE_CODE (elttype) == TYPE_CODE_METHOD)
 {
   pascal_object_print_class_method (valaddr + embedded_offset, type, stream);
 }
      else if (TYPE_CODE (elttype) == 136)
 {
   pascal_object_print_class_member (valaddr + embedded_offset,
     TYPE_DOMAIN_TYPE (TYPE_TARGET_TYPE (type)),
         stream, "&");
 }
      else
 {
   addr = unpack_pointer (type, valaddr + embedded_offset);
 print_unpacked_pointer:
   elttype = check_typedef (TYPE_TARGET_TYPE (type));

   if (TYPE_CODE (elttype) == 138)
     {

       print_address_demangle (addr, stream, demangle);

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

       i = val_print_string (addr, -1, 1, stream);
     }





          if (is_pascal_string_type (elttype, &length_pos, &length_size,
                                     &string_pos, &char_size, ((void*)0))
       && addr != 0)
     {
       ULONGEST string_length;
              void *buffer;
              buffer = xmalloc (length_size);
              read_memory (addr + length_pos, buffer, length_size);
       string_length = extract_unsigned_integer (buffer, length_size);
              xfree (buffer);
              i = val_print_string (addr + string_pos, string_length, char_size, stream);
     }
   else if (pascal_object_is_vtbl_member (type))
     {

       CORE_ADDR vt_address = unpack_pointer (type, valaddr + embedded_offset);

       struct minimal_symbol *msymbol =
       lookup_minimal_symbol_by_pc (vt_address);
       if ((msymbol != ((void*)0))
    && (vt_address == SYMBOL_VALUE_ADDRESS (msymbol)))
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
    common_val_print (vt_val, stream, format, deref_ref,
        recurse + 1, pretty);
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
      error ("not implemented: member type in pascal_val_print");
      break;

    case 133:
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (TYPE_CODE (elttype) == 136)
 {
   pascal_object_print_class_member (valaddr + embedded_offset,
         TYPE_DOMAIN_TYPE (elttype),
         stream, "");
   break;
 }
      if (addressprint)
 {
   fprintf_filtered (stream, "@");

   print_address_numeric
     (extract_unsigned_integer (valaddr + embedded_offset,
           TARGET_PTR_BIT / HOST_CHAR_BIT),
      1, stream);
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
    recurse + 1, pretty);
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
      if (vtblprint && pascal_object_is_vtbl_ptr_type (type))
 {




   print_address_demangle
     (extract_unsigned_integer (valaddr + embedded_offset + TYPE_FIELD_BITPOS (type, VTBL_FNADDR_OFFSET) / 8,
           TYPE_LENGTH (TYPE_FIELD_TYPE (type, VTBL_FNADDR_OFFSET))),
      stream, demangle);
 }
      else
 {
          if (is_pascal_string_type (type, &length_pos, &length_size,
                                     &string_pos, &char_size, ((void*)0)))
     {
       len = extract_unsigned_integer (valaddr + embedded_offset + length_pos, length_size);
       LA_PRINT_STRING (stream, valaddr + embedded_offset + string_pos, len, char_size, 0);
     }
   else
     pascal_object_print_value_fields (type, valaddr + embedded_offset, address, stream, format,
           recurse, pretty, ((void*)0), 0);
 }
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

    case 143:
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
     {
       fputs_filtered ("true (", stream);
       fprintf_filtered (stream, "%ld)", (long int) val);
     }
 }
      break;

    case 134:
    case 137:
      format = format ? format : output_format;
      if (format)
 {
   print_scalar_formatted (valaddr + embedded_offset, type, format, 0, stream);
 }
      else
 {
   val_print_type_code_int (type, valaddr + embedded_offset, stream);
 }
      break;

    case 142:
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

    case 144:
    case 132:
      elttype = TYPE_INDEX_TYPE (type);
      CHECK_TYPEDEF (elttype);
      if (TYPE_STUB (elttype))
 {
   fprintf_filtered (stream, "<incomplete type>");
   gdb_flush (stream);
   break;
 }
      else
 {
   struct type *range = elttype;
   LONGEST low_bound, high_bound;
   int i;
   int is_bitstring = TYPE_CODE (type) == 144;
   int need_comma = 0;

   if (is_bitstring)
     fputs_filtered ("B'", stream);
   else
     fputs_filtered ("[", stream);

   i = get_discrete_bounds (range, &low_bound, &high_bound);
 maybe_bad_bstring:
   if (i < 0)
     {
       fputs_filtered ("<error value>", stream);
       goto done;
     }

   for (i = low_bound; i <= high_bound; i++)
     {
       int element = value_bit_index (type, valaddr + embedded_offset, i);
       if (element < 0)
  {
    i = element;
    goto maybe_bad_bstring;
  }
       if (is_bitstring)
  fprintf_filtered (stream, "%d", element);
       else if (element)
  {
    if (need_comma)
      fputs_filtered (", ", stream);
    print_type_scalar (range, i, stream);
    need_comma = 1;

    if (i + 1 <= high_bound && value_bit_index (type, valaddr + embedded_offset, ++i))
      {
        int j = i;
        fputs_filtered ("..", stream);
        while (i + 1 <= high_bound
        && value_bit_index (type, valaddr + embedded_offset, ++i))
   j = i;
        print_type_scalar (range, j, stream);
      }
  }
     }
 done:
   if (is_bitstring)
     fputs_filtered ("'", stream);
   else
     fputs_filtered ("]", stream);
 }
      break;

    case 128:
      fprintf_filtered (stream, "void");
      break;

    case 140:
      fprintf_filtered (stream, "<error type>");
      break;

    case 130:



      fprintf_filtered (stream, "<incomplete type>");
      break;

    default:
      error ("Invalid pascal type code %d in symbol table.", TYPE_CODE (type));
    }
  gdb_flush (stream);
  return (0);
}
