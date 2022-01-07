
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X_op; int X_add_number; } ;
typedef TYPE_1__ expressionS ;




 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int expression_and_evaluate (TYPE_1__*) ;
 char get_symbol_end () ;
 char* input_line_pointer ;
 scalar_t__ is_name_beginner (char) ;
 int tc_regname_to_dw2regnum (char*) ;

__attribute__((used)) static unsigned
cfi_parse_reg (void)
{
  int regno;
  expressionS exp;
  expression_and_evaluate (&exp);
  switch (exp.X_op)
    {
    case 128:
    case 129:
      regno = exp.X_add_number;
      break;

    default:
      as_bad (_("bad register expression"));
      regno = 0;
      break;
    }

  return regno;
}
