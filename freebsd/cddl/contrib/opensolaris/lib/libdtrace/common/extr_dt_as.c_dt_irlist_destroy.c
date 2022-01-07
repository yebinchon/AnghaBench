
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* di_next; } ;
typedef TYPE_1__ dt_irnode_t ;
struct TYPE_6__ {TYPE_1__* dl_list; } ;
typedef TYPE_2__ dt_irlist_t ;


 int free (TYPE_1__*) ;

void
dt_irlist_destroy(dt_irlist_t *dlp)
{
 dt_irnode_t *dip, *nip;

 for (dip = dlp->dl_list; dip != ((void*)0); dip = nip) {
  nip = dip->di_next;
  free(dip);
 }
}
