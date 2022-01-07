
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int reg_entry ;
struct TYPE_3__ {int const* X_add_number; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int O_register ;
 scalar_t__ REGISTER_PREFIX ;
 int i386_regtab ;
 scalar_t__* input_line_pointer ;
 int * parse_real_register (scalar_t__*,char**) ;

void
md_operand (expressionS *e)
{
  if (*input_line_pointer == REGISTER_PREFIX)
    {
      char *end;
      const reg_entry *r = parse_real_register (input_line_pointer, &end);

      if (r)
 {
   e->X_op = O_register;
   e->X_add_number = r - i386_regtab;
   input_line_pointer = end;
 }
    }
}
