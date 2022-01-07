
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ X_op; } ;
typedef TYPE_1__ expressionS ;


 scalar_t__ O_max ;
 int assert (int) ;
 int expr_set_precedence () ;

void
expr_begin (void)
{
  expr_set_precedence ();


  {
    expressionS e;
    e.X_op = O_max;
    assert (e.X_op == O_max);
  }
}
