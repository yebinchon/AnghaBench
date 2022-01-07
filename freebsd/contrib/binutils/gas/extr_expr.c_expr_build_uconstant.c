
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
typedef int offsetT ;
struct TYPE_3__ {int X_unsigned; int X_add_number; int X_op; } ;
typedef TYPE_1__ expressionS ;


 int O_constant ;
 int * make_expr_symbol (TYPE_1__*) ;

symbolS *
expr_build_uconstant (offsetT value)
{
  expressionS e;

  e.X_op = O_constant;
  e.X_add_number = value;
  e.X_unsigned = 1;
  return make_expr_symbol (&e);
}
