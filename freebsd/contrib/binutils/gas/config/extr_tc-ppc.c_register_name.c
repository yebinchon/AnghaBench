
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X_add_number; int * X_op_symbol; int * X_add_symbol; int X_op; } ;
typedef TYPE_1__ expressionS ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ ISALPHA (char) ;
 int O_register ;
 int REG_NAME_CNT ;
 int TRUE ;
 char get_symbol_end () ;
 char* input_line_pointer ;
 int pre_defined_registers ;
 int reg_name_search (int ,int ,char*) ;
 int reg_names_p ;

__attribute__((used)) static bfd_boolean
register_name (expressionS *expressionP)
{
  int reg_number;
  char *name;
  char *start;
  char c;


  start = name = input_line_pointer;
  if (name[0] == '%' && ISALPHA (name[1]))
    name = ++input_line_pointer;

  else if (!reg_names_p || !ISALPHA (name[0]))
    return FALSE;

  c = get_symbol_end ();
  reg_number = reg_name_search (pre_defined_registers, REG_NAME_CNT, name);


  *input_line_pointer = c;


  if (reg_number >= 0)
    {
      expressionP->X_op = O_register;
      expressionP->X_add_number = reg_number;


      expressionP->X_add_symbol = ((void*)0);
      expressionP->X_op_symbol = ((void*)0);
      return TRUE;
    }


  input_line_pointer = start;
  return FALSE;
}
