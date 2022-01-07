
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_flag_sym {struct print_flag_sym* next; int str; int value; } ;
typedef enum print_arg_type { ____Placeholder_print_arg_type } print_arg_type ;


 int define_value (int,char const*,char const*,int ,int ) ;

__attribute__((used)) static void define_values(enum print_arg_type field_type,
     struct print_flag_sym *field,
     const char *ev_name,
     const char *field_name)
{
 define_value(field_type, ev_name, field_name, field->value,
       field->str);

 if (field->next)
  define_values(field_type, field->next, ev_name, field_name);
}
