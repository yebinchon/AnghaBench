
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;
typedef int expressionS ;


 int get_absolute_expr (int *) ;

offsetT
get_absolute_expression (void)
{
  expressionS exp;

  return get_absolute_expr (&exp);
}
