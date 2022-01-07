
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expressionS ;


 int fprintf (int ,char*) ;
 int print_expr_1 (int ,int *) ;
 int stderr ;

void
print_expr (expressionS *exp)
{
  print_expr_1 (stderr, exp);
  fprintf (stderr, "\n");
}
