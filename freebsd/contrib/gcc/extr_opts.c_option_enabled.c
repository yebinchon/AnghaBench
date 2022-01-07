
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cl_option {int var_type; int var_value; scalar_t__ flag_var; } ;







 struct cl_option* cl_options ;

int
option_enabled (int opt_idx)
{
  const struct cl_option *option = &(cl_options[opt_idx]);
  if (option->flag_var)
    switch (option->var_type)
      {
      case 130:
 return *(int *) option->flag_var != 0;

      case 129:
 return *(int *) option->flag_var == option->var_value;

      case 132:
 return (*(int *) option->flag_var & option->var_value) == 0;

      case 131:
 return (*(int *) option->flag_var & option->var_value) != 0;

      case 128:
 break;
      }
  return -1;
}
