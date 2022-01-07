
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ddg_all_sccs_ptr ;
struct TYPE_4__ {int num_sccs; int * sccs; } ;


 int free (TYPE_1__*) ;
 int free_scc (int ) ;

void
free_ddg_all_sccs (ddg_all_sccs_ptr all_sccs)
{
  int i;

  if (!all_sccs)
    return;

  for (i = 0; i < all_sccs->num_sccs; i++)
    free_scc (all_sccs->sccs[i]);

  free (all_sccs);
}
