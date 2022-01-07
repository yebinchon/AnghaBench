
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ddg_ptr ;
typedef int ddg_edge_ptr ;
struct TYPE_4__ {int num_backarcs; int * backarcs; } ;


 int add_edge_to_ddg (TYPE_1__*,int ) ;
 scalar_t__ xrealloc (int *,int) ;

__attribute__((used)) static void
add_backarc_to_ddg (ddg_ptr g, ddg_edge_ptr e)
{
  int size = (g->num_backarcs + 1) * sizeof (ddg_edge_ptr);

  add_edge_to_ddg (g, e);
  g->backarcs = (ddg_edge_ptr *) xrealloc (g->backarcs, size);
  g->backarcs[g->num_backarcs++] = e;
}
