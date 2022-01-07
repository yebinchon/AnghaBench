
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ddg_scc_ptr ;
typedef TYPE_1__* ddg_all_sccs_ptr ;
struct TYPE_3__ {int num_sccs; int sccs; } ;


 scalar_t__ compare_sccs ;
 int qsort (int ,int ,int,int (*) (void const*,void const*)) ;

__attribute__((used)) static void
order_sccs (ddg_all_sccs_ptr g)
{
  qsort (g->sccs, g->num_sccs, sizeof (ddg_scc_ptr),
  (int (*) (const void *, const void *)) compare_sccs);
}
