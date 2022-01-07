
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* ddg_ptr ;
typedef TYPE_3__* ddg_edge_ptr ;
struct TYPE_8__ {struct TYPE_8__* next_in; struct TYPE_8__* next_out; } ;
struct TYPE_7__ {int num_nodes; TYPE_1__* nodes; } ;
struct TYPE_6__ {TYPE_3__* in; TYPE_3__* out; int insn; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int print_ddg_edge (int *,TYPE_3__*) ;
 int print_rtl_single (int *,int ) ;

void
print_ddg (FILE *file, ddg_ptr g)
{
  int i;

  for (i = 0; i < g->num_nodes; i++)
    {
      ddg_edge_ptr e;

      print_rtl_single (file, g->nodes[i].insn);
      fprintf (file, "OUT ARCS: ");
      for (e = g->nodes[i].out; e; e = e->next_out)
 print_ddg_edge (file, e);

      fprintf (file, "\nIN ARCS: ");
      for (e = g->nodes[i].in; e; e = e->next_in)
 print_ddg_edge (file, e);

      fprintf (file, "\n");
    }
}
