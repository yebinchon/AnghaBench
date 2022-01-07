
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dl_label; } ;
typedef TYPE_1__ dt_irlist_t ;


 int bzero (TYPE_1__*,int) ;

void
dt_irlist_create(dt_irlist_t *dlp)
{
 bzero(dlp, sizeof (dt_irlist_t));
 dlp->dl_label = 1;
}
