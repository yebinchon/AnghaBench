
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ddg_scc_ptr ;
typedef int ddg_ptr ;
typedef TYPE_2__* ddg_node_ptr ;
typedef TYPE_3__* ddg_edge_ptr ;
struct TYPE_7__ {int distance; scalar_t__ latency; TYPE_2__* src; TYPE_2__* dest; } ;
struct TYPE_6__ {int cuid; } ;
struct TYPE_5__ {int num_backarcs; int recurrence_length; int nodes; TYPE_3__** backarcs; } ;


 int MAX (int,int) ;
 int longest_simple_path (int ,int ,int ,int ) ;

__attribute__((used)) static void
set_recurrence_length (ddg_scc_ptr scc, ddg_ptr g)
{
  int j;
  int result = -1;

  for (j = 0; j < scc->num_backarcs; j++)
    {
      ddg_edge_ptr backarc = scc->backarcs[j];
      int length;
      int distance = backarc->distance;
      ddg_node_ptr src = backarc->dest;
      ddg_node_ptr dest = backarc->src;

      length = longest_simple_path (g, src->cuid, dest->cuid, scc->nodes);
      if (length < 0 )
 {

   continue;
 }
      length += backarc->latency;
      result = MAX (result, (length / distance));
    }
  scc->recurrence_length = result;
}
