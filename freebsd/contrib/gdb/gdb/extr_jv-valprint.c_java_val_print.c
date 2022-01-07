
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int LA_PRINT_CHAR (int,struct ui_file*) ;
 int const TYPE_CODE (struct type*) ;

 int const TYPE_CODE_FUNC ;



 int TYPE_LENGTH (struct type*) ;
 int TYPE_NAME (struct type*) ;
 int TYPE_TARGET_TYPE (struct type*) ;
 int addressprint ;
 int c_val_print (struct type*,char*,int,int ,struct ui_file*,int,int,int,int) ;
 struct type* check_typedef (int ) ;
 int cp_is_vtbl_ptr_type (struct type*) ;
 int demangle ;
 int extract_unsigned_integer (char*,int) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int java_print_value_fields (struct type*,char*,int ,struct ui_file*,int,int,int) ;
 int output_format ;
 int print_address_demangle (int ,struct ui_file*,int ) ;
 int print_longest (struct ui_file*,char,int ,int ) ;
 int print_scalar_formatted (char*,struct type*,int,int ,struct ui_file*) ;
 int strcmp (int ,char*) ;
 scalar_t__ unpack_long (struct type*,char*) ;
 int unpack_pointer (struct type*,char*) ;
 int val_print_type_code_int (struct type*,char*,struct ui_file*) ;
 int vtblprint ;

int
java_val_print (struct type *type, char *valaddr, int embedded_offset,
  CORE_ADDR address, struct ui_file *stream, int format,
  int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int i = 0;
  struct type *target_type;
  CORE_ADDR addr;

  CHECK_TYPEDEF (type);
  switch (TYPE_CODE (type))
    {
    case 129:
      if (format && format != 's')
 {
   print_scalar_formatted (valaddr, type, format, 0, stream);
   break;
 }
      addr = unpack_pointer (type, valaddr);
      if (addr == 0)
 {
   fputs_filtered ("null", stream);
   return i;
 }
      target_type = check_typedef (TYPE_TARGET_TYPE (type));

      if (TYPE_CODE (target_type) == TYPE_CODE_FUNC)
 {

   print_address_demangle (addr, stream, demangle);

   return (0);
 }

      if (addressprint && format != 's')
 {
   fputs_filtered ("@", stream);
   print_longest (stream, 'x', 0, (ULONGEST) addr);
 }

      return i;

    case 131:
    case 130:


      format = format ? format : output_format;
      if (format)
 print_scalar_formatted (valaddr, type, format, 0, stream);
      else if (TYPE_CODE (type) == 131
        || (TYPE_CODE (type) == 130
     && TYPE_LENGTH (type) == 2
     && strcmp (TYPE_NAME (type), "char") == 0))
 LA_PRINT_CHAR ((int) unpack_long (type, valaddr), stream);
      else
 val_print_type_code_int (type, valaddr, stream);
      break;

    case 128:
      java_print_value_fields (type, valaddr, address, stream, format,
          recurse, pretty);
      break;

    default:
      return c_val_print (type, valaddr, embedded_offset, address, stream,
     format, deref_ref, recurse, pretty);
    }

  return 0;
}
