
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
struct TYPE_2__ {int opcode; } ;


 int dump_subexp_body (struct expression*,struct ui_file*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int op_name (struct expression*,int ) ;

int
dump_subexp (struct expression *exp, struct ui_file *stream, int elt)
{
  static int indent = 0;
  int i;

  fprintf_filtered (stream, "\n");
  fprintf_filtered (stream, "\t%5d  ", elt);

  for (i = 1; i <= indent; i++)
    fprintf_filtered (stream, " ");
  indent += 2;

  fprintf_filtered (stream, "%-20s  ", op_name (exp, exp->elts[elt].opcode));

  elt = dump_subexp_body (exp, stream, elt);

  indent -= 2;

  return elt;
}
