
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct print_context {int reg; scalar_t__ started; int * fp; } ;
typedef TYPE_1__* conflict_graph ;
struct TYPE_4__ {int num_regs; } ;
typedef int FILE ;


 int conflict_graph_enum (TYPE_1__*,int,int *,struct print_context*) ;
 int fprintf (int *,char*) ;
 int fputc (char,int *) ;
 int print_conflict ;

void
conflict_graph_print (conflict_graph graph, FILE *fp)
{
  int reg;
  struct print_context context;

  context.fp = fp;
  fprintf (fp, "Conflicts:\n");


  for (reg = 0; reg < graph->num_regs; ++reg)
    {
      context.reg = reg;
      context.started = 0;





      conflict_graph_enum (graph, reg, &print_conflict, &context);


      if (context.started)
 fputc ('\n', fp);
    }
}
