
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int X_op; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_5__ {int * error; } ;


 int O_illegal ;
 int * _ (char*) ;
 scalar_t__ in_my_get_expression ;
 TYPE_3__ inst ;

void
md_operand (expressionS * expr)
{
  if (in_my_get_expression)
    {
      expr->X_op = O_illegal;
      if (inst.error == ((void*)0))
        {
          inst.error = _("bad expression");
        }
    }
}
