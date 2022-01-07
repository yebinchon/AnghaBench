
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ operatorT ;
struct TYPE_4__ {scalar_t__ X_op; scalar_t__ X_add_number; int X_add_symbol; int X_op_symbol; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_subtract ;
 scalar_t__ O_symbol ;
 scalar_t__ THUMB_IS_FUNC (int ) ;

int
arm_optimize_expr (expressionS *l, operatorT op, expressionS *r)
{
  if (op == O_subtract
      && l->X_op == O_symbol
      && r->X_op == O_symbol
      && THUMB_IS_FUNC (l->X_add_symbol))
    {
      l->X_op = O_subtract;
      l->X_op_symbol = r->X_add_symbol;
      l->X_add_number -= r->X_add_number;
      return 1;
    }

  return 0;
}
