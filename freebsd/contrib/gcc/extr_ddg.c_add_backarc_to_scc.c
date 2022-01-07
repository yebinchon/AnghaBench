
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ddg_scc_ptr ;
typedef int ddg_edge_ptr ;
struct TYPE_3__ {int num_backarcs; int * backarcs; } ;


 scalar_t__ xrealloc (int *,int) ;

__attribute__((used)) static void
add_backarc_to_scc (ddg_scc_ptr scc, ddg_edge_ptr e)
{
  int size = (scc->num_backarcs + 1) * sizeof (ddg_edge_ptr);

  scc->backarcs = (ddg_edge_ptr *) xrealloc (scc->backarcs, size);
  scc->backarcs[scc->num_backarcs++] = e;
}
