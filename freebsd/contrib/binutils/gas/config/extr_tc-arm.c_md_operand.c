
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X_op; } ;
typedef TYPE_1__ expressionS ;


 int O_illegal ;
 scalar_t__ in_my_get_expression ;

void
md_operand (expressionS * expr)
{
  if (in_my_get_expression)
    expr->X_op = O_illegal;
}
