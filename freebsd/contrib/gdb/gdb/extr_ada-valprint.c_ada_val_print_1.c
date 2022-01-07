
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef scalar_t__ LONGEST ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int HOST_CHAR_BIT ;
 int QUIT ;
 int TARGET_PTR_BIT ;
 int const TYPE_CODE (struct type*) ;






 int const TYPE_CODE_UNDEF ;

 scalar_t__ TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_BITSIZE (struct type*,int ) ;
 int TYPE_FIELD_NAME (struct type*,int) ;
 unsigned int TYPE_LENGTH (struct type*) ;
 unsigned int TYPE_NFIELDS (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int VALUE_ADDRESS (struct value*) ;
 char* VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 char* ada_aligned_value_addr (struct type*,char*) ;
 struct value* ada_coerce_to_simple_array_ptr (struct value*) ;
 char* ada_enum_name (int ) ;
 scalar_t__ ada_fixed_to_float (struct type*,scalar_t__) ;
 scalar_t__ ada_is_array_descriptor (struct type*) ;
 int ada_is_bogus_array_descriptor (struct type*) ;
 int ada_is_character_type (struct type*) ;
 int ada_is_fixed_point_type (struct type*) ;
 scalar_t__ ada_is_packed_array_type (struct type*) ;
 int ada_is_string_type (struct type*) ;
 int ada_is_vax_floating_type (struct type*) ;
 int ada_printchar (unsigned char,struct ui_file*) ;
 struct value* ada_value_ind (int ) ;
 struct value* ada_vax_float_print_function (struct type*) ;
 int addressprint ;
 int builtin_type_char ;
 int builtin_type_int ;
 struct type* builtin_type_void ;
 int c_val_print (struct type*,char*,int,int ,struct ui_file*,int,int,int,int) ;
 struct value* call_function_by_hand (struct value*,int,struct value**) ;
 int char_at (char*,int,unsigned int) ;
 struct type* check_typedef (struct type*) ;
 int create_array_type (int *,int ,int ) ;
 int create_range_type (int *,int ,int ,int) ;
 int extract_unsigned_integer (char*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char const*,struct ui_file*) ;
 int gdb_flush (struct ui_file*) ;
 int lookup_pointer_type (struct type*) ;
 struct type* make_pointer_type (int ,int *) ;
 int output_format ;
 int prettyprint_arrays ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int print_longest (struct ui_file*,char,int ,scalar_t__) ;
 int print_max ;
 int print_optional_low_bound (struct ui_file*,struct type*) ;
 int print_record (struct type*,char*,struct ui_file*,int,int,int) ;
 int print_scalar_formatted (char*,struct type*,int,int ,struct ui_file*) ;
 int print_spaces_filtered (int,struct ui_file*) ;
 struct type* printable_val_type (struct type*,char*) ;
 int printstr (struct ui_file*,char*,unsigned int,int ,unsigned int) ;
 int stop_print_at_null ;
 scalar_t__ unpack_long (struct type*,char*) ;
 int unpack_pointer (int ,char*) ;
 int val_print (struct type*,char*,int ,int ,struct ui_file*,int,int,int,int) ;
 int val_print_array_elements (struct type*,char*,int ,struct ui_file*,int,int,int,int,int ) ;
 int val_print_packed_array_elements (struct type*,char*,int ,struct ui_file*,int,int,int) ;
 int val_print_type_code_int (struct type*,char*,struct ui_file*) ;
 struct value* value_cast (struct type*,struct value*) ;
 int value_free_to_mark (struct value*) ;
 struct value* value_from_contents_and_address (struct type*,char*,int ) ;
 int value_from_longest (int ,scalar_t__) ;
 struct value* value_ind (struct value*) ;
 struct value* value_mark () ;

__attribute__((used)) static int
ada_val_print_1 (struct type *type, char *valaddr0, int embedded_offset,
   CORE_ADDR address, struct ui_file *stream, int format,
   int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int len;
  int i;
  struct type *elttype;
  unsigned int eltlen;
  LONGEST val;
  CORE_ADDR addr;
  char *valaddr = valaddr0 + embedded_offset;

  CHECK_TYPEDEF (type);

  if (ada_is_array_descriptor (type) || ada_is_packed_array_type (type))
    {
      int retn;
      struct value *mark = value_mark ();
      struct value *val;
      val = value_from_contents_and_address (type, valaddr, address);
      val = ada_coerce_to_simple_array_ptr (val);
      if (val == ((void*)0))
 {
   fprintf_filtered (stream, "(null)");
   retn = 0;
 }
      else
 retn = ada_val_print_1 (VALUE_TYPE (val), VALUE_CONTENTS (val), 0,
    VALUE_ADDRESS (val), stream, format,
    deref_ref, recurse, pretty);
      value_free_to_mark (mark);
      return retn;
    }

  valaddr = ada_aligned_value_addr (type, valaddr);
  embedded_offset -= valaddr - valaddr0 - embedded_offset;
  type = printable_val_type (type, valaddr);

  switch (TYPE_CODE (type))
    {
    default:
      return c_val_print (type, valaddr0, embedded_offset, address, stream,
     format, deref_ref, recurse, pretty);

    case 132:
    case 131:
      if (ada_is_fixed_point_type (type))
 {
   LONGEST v = unpack_long (type, valaddr);
   int len = TYPE_LENGTH (type);

   fprintf_filtered (stream, len < 4 ? "%.11g" : "%.17g",
       (double) ada_fixed_to_float (type, v));
   return 0;
 }
      else if (ada_is_vax_floating_type (type))
 {
   struct value *val =
     value_from_contents_and_address (type, valaddr, address);
   struct value *func = ada_vax_float_print_function (type);
   if (func != 0)
     {
       static struct type *parray_of_char = ((void*)0);
       struct value *printable_val;

       if (parray_of_char == ((void*)0))
  parray_of_char =
    make_pointer_type
    (create_array_type
     (((void*)0), builtin_type_char,
      create_range_type (((void*)0), builtin_type_int, 0, 32)), ((void*)0));

       printable_val =
  value_ind (value_cast (parray_of_char,
           call_function_by_hand (func, 1,
             &val)));

       fprintf_filtered (stream, "%s", VALUE_CONTENTS (printable_val));
       return 0;
     }

 }
      else if (TYPE_CODE (type) == 131)
 {
   struct type *target_type = TYPE_TARGET_TYPE (type);
   if (TYPE_LENGTH (type) != TYPE_LENGTH (target_type))
     {




       struct value *v = value_cast (target_type,
         value_from_contents_and_address
         (type, valaddr, 0));
       return ada_val_print_1 (target_type, VALUE_CONTENTS (v), 0, 0,
          stream, format, 0, recurse + 1, pretty);
     }
   else
     return ada_val_print_1 (TYPE_TARGET_TYPE (type),
        valaddr0, embedded_offset,
        address, stream, format, deref_ref,
        recurse, pretty);
 }
      else
 {
   format = format ? format : output_format;
   if (format)
     {
       print_scalar_formatted (valaddr, type, format, 0, stream);
     }
   else
     {
       val_print_type_code_int (type, valaddr, stream);
       if (ada_is_character_type (type))
  {
    fputs_filtered (" ", stream);
    ada_printchar ((unsigned char) unpack_long (type, valaddr),
     stream);
  }
     }
   return 0;
 }

    case 133:
      if (format)
 {
   print_scalar_formatted (valaddr, type, format, 0, stream);
   break;
 }
      len = TYPE_NFIELDS (type);
      val = unpack_long (type, valaddr);
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
   const char *name = ada_enum_name (TYPE_FIELD_NAME (type, i));
   if (name[0] == '\'')
     fprintf_filtered (stream, "%ld %s", (long) val, name);
   else
     fputs_filtered (name, stream);
 }
      else
 {
   print_longest (stream, 'd', 0, val);
 }
      break;

    case 128:
    case 129:
      if (ada_is_bogus_array_descriptor (type))
 {
   fprintf_filtered (stream, "(...?)");
   return 0;
 }
      else
 {
   print_record (type, valaddr, stream, format, recurse, pretty);
   return 0;
 }

    case 134:
      if (TYPE_LENGTH (type) > 0 && TYPE_LENGTH (TYPE_TARGET_TYPE (type)) > 0)
 {
   elttype = TYPE_TARGET_TYPE (type);
   eltlen = TYPE_LENGTH (elttype);
   len = TYPE_LENGTH (type) / eltlen;


   if (ada_is_string_type (type) && (format == 0 || format == 's'))
     {
       if (prettyprint_arrays)
  {
    print_spaces_filtered (2 + 2 * recurse, stream);
  }


       if (stop_print_at_null)
  {
    int temp_len;


    for (temp_len = 0;
         temp_len < len && temp_len < print_max
         && char_at (valaddr, temp_len, eltlen) != 0;
         temp_len += 1);
    len = temp_len;
  }

       printstr (stream, valaddr, len, 0, eltlen);
     }
   else
     {
       len = 0;
       fprintf_filtered (stream, "(");
       print_optional_low_bound (stream, type);
       if (TYPE_FIELD_BITSIZE (type, 0) > 0)
  val_print_packed_array_elements (type, valaddr, 0, stream,
       format, recurse, pretty);
       else
  val_print_array_elements (type, valaddr, address, stream,
       format, deref_ref, recurse,
       pretty, 0);
       fprintf_filtered (stream, ")");
     }
   gdb_flush (stream);
   return len;
 }

    case 130:
      elttype = check_typedef (TYPE_TARGET_TYPE (type));
      if (addressprint)
 {
   fprintf_filtered (stream, "@");

   print_address_numeric
     (extract_unsigned_integer (valaddr,
           TARGET_PTR_BIT / HOST_CHAR_BIT),
      1, stream);
   if (deref_ref)
     fputs_filtered (": ", stream);
 }

      if (deref_ref)
 {
   if (TYPE_CODE (elttype) != TYPE_CODE_UNDEF)
     {
       LONGEST deref_val_int = (LONGEST)
  unpack_pointer (lookup_pointer_type (builtin_type_void),
    valaddr);
       if (deref_val_int != 0)
  {
    struct value *deref_val =
      ada_value_ind (value_from_longest
       (lookup_pointer_type (elttype),
        deref_val_int));
    val_print (VALUE_TYPE (deref_val),
        VALUE_CONTENTS (deref_val), 0,
        VALUE_ADDRESS (deref_val), stream, format,
        deref_ref, recurse + 1, pretty);
  }
       else
  fputs_filtered ("(null)", stream);
     }
   else
     fputs_filtered ("???", stream);
 }
      break;
    }
  return 0;
}
