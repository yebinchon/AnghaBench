
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_stream {int stream; } ;
struct type {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int CHECK_TYPEDEF (struct type*) ;
 int DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS (int ) ;
 scalar_t__ DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS_P () ;
 int EXTRACT_RETURN_VALUE (struct type*,int ,int ) ;
 scalar_t__ RETURN_VALUE_STRUCT_CONVENTION ;
 int TYPE_NAME (struct type*) ;
 int VALUE_CONTENTS_RAW (struct value*) ;
 int Val_no_prettyprint ;
 struct value* allocate_value (struct type*) ;
 int current_gdbarch ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int gdb_assert (int) ;
 scalar_t__ gdbarch_return_value (int ,struct type*,int *,int *,int *) ;
 scalar_t__ gdbarch_return_value_p (int ) ;
 struct cleanup* make_cleanup_ui_out_stream_delete (struct ui_stream*) ;
 int record_latest_value (struct value*) ;
 struct value* register_value_being_returned (struct type*,int ) ;
 int stop_registers ;
 int ui_out_field_fmt (int ,char*,char*,int ) ;
 int ui_out_field_stream (int ,char*,struct ui_stream*) ;
 int ui_out_field_string (int ,char*,int ) ;
 struct ui_stream* ui_out_stream_new (int ) ;
 int ui_out_text (int ,char*) ;
 int uiout ;
 struct value* value_at (struct type*,int ,int *) ;
 int value_print (struct value*,int ,int ,int ) ;

__attribute__((used)) static void
print_return_value (int struct_return, struct type *value_type)
{
  struct cleanup *old_chain;
  struct ui_stream *stb;
  struct value *value;

  if (!struct_return)
    {

      value = register_value_being_returned (value_type, stop_registers);
    }
  else if (gdbarch_return_value_p (current_gdbarch))




    {
      gdb_assert (gdbarch_return_value (current_gdbarch, value_type,
     ((void*)0), ((void*)0), ((void*)0))
    == RETURN_VALUE_STRUCT_CONVENTION);
      ui_out_text (uiout, "Value returned has type: ");
      ui_out_field_string (uiout, "return-type", TYPE_NAME (value_type));
      ui_out_text (uiout, ".");
      ui_out_text (uiout, " Cannot determine contents\n");
      return;
    }
  else
    {
      if (DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS_P ())
 {
   CORE_ADDR addr = DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS (stop_registers);
   if (!addr)
     error ("Function return value unknown.");
   value = value_at (value_type, addr, ((void*)0));
 }
      else
 {




   value = allocate_value (value_type);
   CHECK_TYPEDEF (value_type);


   EXTRACT_RETURN_VALUE (value_type, stop_registers,
    VALUE_CONTENTS_RAW (value));
 }
    }


  stb = ui_out_stream_new (uiout);
  old_chain = make_cleanup_ui_out_stream_delete (stb);
  ui_out_text (uiout, "Value returned is ");
  ui_out_field_fmt (uiout, "gdb-result-var", "$%d",
      record_latest_value (value));
  ui_out_text (uiout, " = ");
  value_print (value, stb->stream, 0, Val_no_prettyprint);
  ui_out_field_stream (uiout, "return-value", stb);
  ui_out_text (uiout, "\n");
  do_cleanups (old_chain);
}
