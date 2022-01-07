
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* ddg_ptr ;
typedef TYPE_4__* ddg_edge_ptr ;
struct TYPE_9__ {int distance; int latency; TYPE_2__* dest; struct TYPE_9__* next_out; } ;
struct TYPE_8__ {int num_nodes; TYPE_1__* nodes; } ;
struct TYPE_7__ {int cuid; int insn; } ;
struct TYPE_6__ {TYPE_4__* out; int insn; } ;
typedef int FILE ;


 int INSN_UID (int ) ;
 int fprintf (int *,char*,...) ;
 int print_rtl_single (int *,int ) ;

void
vcg_print_ddg (FILE *file, ddg_ptr g)
{
  int src_cuid;

  fprintf (file, "graph: {\n");
  for (src_cuid = 0; src_cuid < g->num_nodes; src_cuid++)
    {
      ddg_edge_ptr e;
      int src_uid = INSN_UID (g->nodes[src_cuid].insn);

      fprintf (file, "node: {title: \"%d_%d\" info1: \"", src_cuid, src_uid);
      print_rtl_single (file, g->nodes[src_cuid].insn);
      fprintf (file, "\"}\n");
      for (e = g->nodes[src_cuid].out; e; e = e->next_out)
 {
   int dst_uid = INSN_UID (e->dest->insn);
   int dst_cuid = e->dest->cuid;


   if (e->distance > 0)
     fprintf (file, "backedge: {color: red ");
   else
     fprintf (file, "edge: { ");

   fprintf (file, "sourcename: \"%d_%d\" ", src_cuid, src_uid);
   fprintf (file, "targetname: \"%d_%d\" ", dst_cuid, dst_uid);
   fprintf (file, "label: \"%d_%d\"}\n", e->latency, e->distance);
 }
    }
  fprintf (file, "}\n");
}
