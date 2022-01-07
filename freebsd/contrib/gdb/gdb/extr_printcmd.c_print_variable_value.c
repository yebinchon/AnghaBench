
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;


 int Val_pretty_default ;
 struct value* read_var_value (struct symbol*,struct frame_info*) ;
 int value_print (struct value*,struct ui_file*,int ,int ) ;

void
print_variable_value (struct symbol *var, struct frame_info *frame,
        struct ui_file *stream)
{
  struct value *val = read_var_value (var, frame);

  value_print (val, stream, 0, Val_pretty_default);
}
