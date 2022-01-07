
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_flag_sym {struct print_flag_sym* next; int str; int value; } ;


 int define_symbolic_value (char const*,char const*,int ,int ) ;

__attribute__((used)) static void define_symbolic_values(struct print_flag_sym *field,
       const char *ev_name,
       const char *field_name)
{
 define_symbolic_value(ev_name, field_name, field->value, field->str);
 if (field->next)
  define_symbolic_values(field->next, ev_name, field_name);
}
