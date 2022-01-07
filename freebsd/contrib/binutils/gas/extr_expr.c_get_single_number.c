
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int X_add_number; } ;
typedef TYPE_1__ expressionS ;


 int expr_normal ;
 int operand (TYPE_1__*,int ) ;

unsigned int
get_single_number (void)
{
  expressionS exp;
  operand (&exp, expr_normal);
  return exp.X_add_number;
}
