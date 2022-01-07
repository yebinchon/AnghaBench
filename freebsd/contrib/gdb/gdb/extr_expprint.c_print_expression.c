
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct expression {int dummy; } ;


 int PREC_NULL ;
 int print_subexp (struct expression*,int*,struct ui_file*,int ) ;

void
print_expression (struct expression *exp, struct ui_file *stream)
{
  int pc = 0;
  print_subexp (exp, &pc, stream, PREC_NULL);
}
