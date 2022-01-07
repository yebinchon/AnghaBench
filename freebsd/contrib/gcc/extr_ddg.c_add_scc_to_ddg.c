
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ddg_scc_ptr ;
typedef TYPE_1__* ddg_all_sccs_ptr ;
struct TYPE_3__ {int num_sccs; int * sccs; } ;


 scalar_t__ xrealloc (int *,int) ;

__attribute__((used)) static void
add_scc_to_ddg (ddg_all_sccs_ptr g, ddg_scc_ptr scc)
{
  int size = (g->num_sccs + 1) * sizeof (ddg_scc_ptr);

  g->sccs = (ddg_scc_ptr *) xrealloc (g->sccs, size);
  g->sccs[g->num_sccs++] = scc;
}
