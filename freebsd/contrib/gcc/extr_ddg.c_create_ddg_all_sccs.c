
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct ddg_all_sccs {int dummy; } ;
typedef int sbitmap ;
typedef int ddg_scc_ptr ;
typedef TYPE_2__* ddg_ptr ;
typedef TYPE_3__* ddg_node_ptr ;
typedef TYPE_4__* ddg_edge_ptr ;
typedef TYPE_5__* ddg_all_sccs_ptr ;
struct TYPE_16__ {scalar_t__ num_sccs; int * sccs; TYPE_2__* ddg; } ;
struct TYPE_12__ {scalar_t__ count; } ;
struct TYPE_15__ {TYPE_1__ aux; TYPE_3__* dest; TYPE_3__* src; } ;
struct TYPE_14__ {int cuid; } ;
struct TYPE_13__ {int num_nodes; int num_backarcs; TYPE_4__** backarcs; } ;


 scalar_t__ IN_SCC ;
 int SET_BIT (int ,int ) ;
 int add_scc_to_ddg (TYPE_5__*,int ) ;
 int create_scc (TYPE_2__*,int ) ;
 scalar_t__ find_nodes_on_paths (int ,TYPE_2__*,int ,int ) ;
 int order_sccs (TYPE_5__*) ;
 int sbitmap_alloc (int) ;
 int sbitmap_free (int ) ;
 int sbitmap_zero (int ) ;
 int xmalloc (int) ;

ddg_all_sccs_ptr
create_ddg_all_sccs (ddg_ptr g)
{
  int i;
  int num_nodes = g->num_nodes;
  sbitmap from = sbitmap_alloc (num_nodes);
  sbitmap to = sbitmap_alloc (num_nodes);
  sbitmap scc_nodes = sbitmap_alloc (num_nodes);
  ddg_all_sccs_ptr sccs = (ddg_all_sccs_ptr)
     xmalloc (sizeof (struct ddg_all_sccs));

  sccs->ddg = g;
  sccs->sccs = ((void*)0);
  sccs->num_sccs = 0;

  for (i = 0; i < g->num_backarcs; i++)
    {
      ddg_scc_ptr scc;
      ddg_edge_ptr backarc = g->backarcs[i];
      ddg_node_ptr src = backarc->src;
      ddg_node_ptr dest = backarc->dest;


      if (backarc->aux.count == IN_SCC)
 continue;

      sbitmap_zero (from);
      sbitmap_zero (to);
      SET_BIT (from, dest->cuid);
      SET_BIT (to, src->cuid);

      if (find_nodes_on_paths (scc_nodes, g, from, to))
 {
   scc = create_scc (g, scc_nodes);
   add_scc_to_ddg (sccs, scc);
 }
    }
  order_sccs (sccs);
  sbitmap_free (from);
  sbitmap_free (to);
  sbitmap_free (scc_nodes);
  return sccs;
}
