
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int expressionS ;


 int current_location (int *) ;
 int * make_expr_symbol (int *) ;

symbolS *
expr_build_dot (void)
{
  expressionS e;

  current_location (&e);
  return make_expr_symbol (&e);
}
