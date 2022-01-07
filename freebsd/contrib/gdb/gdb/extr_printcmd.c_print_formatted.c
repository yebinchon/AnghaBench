
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_ARRAY ;
 int TYPE_CODE_NAMESPACE ;
 int TYPE_CODE_STRING ;
 int TYPE_CODE_STRUCT ;
 int TYPE_CODE_UNION ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 int VALUE_BFD_SECTION (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int Val_pretty_default ;
 struct type* check_typedef (int ) ;
 scalar_t__ gdb_print_insn (scalar_t__,struct ui_file*) ;
 scalar_t__ lval_memory ;
 scalar_t__ next_address ;
 int next_section ;
 int print_scalar_formatted (int ,struct type*,int,int,struct ui_file*) ;
 scalar_t__ val_print_string (scalar_t__,int,int,struct ui_file*) ;
 int value_print (struct value*,struct ui_file*,int,int ) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
print_formatted (struct value *val, int format, int size,
   struct ui_file *stream)
{
  struct type *type = check_typedef (VALUE_TYPE (val));
  int len = TYPE_LENGTH (type);

  if (VALUE_LVAL (val) == lval_memory)
    {
      next_address = VALUE_ADDRESS (val) + len;
      next_section = VALUE_BFD_SECTION (val);
    }

  switch (format)
    {
    case 's':

      next_address = VALUE_ADDRESS (val)
 + val_print_string (VALUE_ADDRESS (val), -1, 1, stream);
      next_section = VALUE_BFD_SECTION (val);
      break;

    case 'i':







      wrap_here ("    ");
      next_address = VALUE_ADDRESS (val)
 + gdb_print_insn (VALUE_ADDRESS (val), stream);
      next_section = VALUE_BFD_SECTION (val);
      break;

    default:
      if (format == 0
   || TYPE_CODE (type) == TYPE_CODE_ARRAY
   || TYPE_CODE (type) == TYPE_CODE_STRING
   || TYPE_CODE (type) == TYPE_CODE_STRUCT
   || TYPE_CODE (type) == TYPE_CODE_UNION
   || TYPE_CODE (type) == TYPE_CODE_NAMESPACE)





 value_print (val, stream, format, Val_pretty_default);
      else



 print_scalar_formatted (VALUE_CONTENTS (val), type,
    format, size, stream);
    }
}
