
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ X_op; scalar_t__ X_add_number; int * X_op_symbol; TYPE_2__* X_add_symbol; } ;
typedef TYPE_3__ expressionS ;
struct TYPE_6__ {void* X_op; } ;
struct TYPE_7__ {TYPE_1__ sy_value; } ;


 void* O_constant ;
 void* O_right_shift ;
 scalar_t__ O_subtract ;
 scalar_t__ O_symbol ;
 int as_bad (char*) ;
 void* make_expr_symbol (TYPE_3__*) ;

__attribute__((used)) static void
arc_code_symbol (expressionS *expressionP)
{
  if (expressionP->X_op == O_symbol && expressionP->X_add_number == 0)
    {
      expressionS two;

      expressionP->X_op = O_right_shift;
      expressionP->X_add_symbol->sy_value.X_op = O_constant;
      two.X_op = O_constant;
      two.X_add_symbol = two.X_op_symbol = ((void*)0);
      two.X_add_number = 2;
      expressionP->X_op_symbol = make_expr_symbol (&two);
    }

  else if (expressionP->X_op == O_subtract
    && expressionP->X_add_symbol != ((void*)0)
    && expressionP->X_op_symbol != ((void*)0)
    && expressionP->X_add_number == 0)
    {
      expressionS two;

      expressionP->X_add_symbol = make_expr_symbol (expressionP);
      expressionP->X_op = O_right_shift;
      two.X_op = O_constant;
      two.X_add_symbol = two.X_op_symbol = ((void*)0);
      two.X_add_number = 2;
      expressionP->X_op_symbol = make_expr_symbol (&two);
    }
  else
    as_bad ("expression too complex code symbol");
}
