
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ offsetT ;
struct TYPE_4__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_absent ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 int as_bad (int ) ;
 int expression_and_evaluate (TYPE_1__*) ;

__attribute__((used)) static offsetT
get_absolute_expr (expressionS *exp)
{
  expression_and_evaluate (exp);
  if (exp->X_op != O_constant)
    {
      if (exp->X_op != O_absent)
 as_bad (_("bad or irreducible absolute expression"));
      exp->X_add_number = 0;
    }
  return exp->X_add_number;
}
