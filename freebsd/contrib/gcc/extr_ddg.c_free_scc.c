
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ddg_scc_ptr ;
struct TYPE_4__ {scalar_t__ num_backarcs; struct TYPE_4__* backarcs; int nodes; } ;


 int free (TYPE_1__*) ;
 int sbitmap_free (int ) ;

__attribute__((used)) static void
free_scc (ddg_scc_ptr scc)
{
  if (!scc)
    return;

  sbitmap_free (scc->nodes);
  if (scc->num_backarcs > 0)
    free (scc->backarcs);
  free (scc);
}
