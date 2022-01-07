
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dl_prev; TYPE_1__* dl_next; } ;
typedef TYPE_3__ dt_list_t ;
struct TYPE_6__ {TYPE_1__* dl_next; } ;
struct TYPE_5__ {TYPE_2__* dl_prev; } ;



void
dt_list_delete(dt_list_t *dlp, void *existing)
{
 dt_list_t *p = existing;

 if (p->dl_prev != ((void*)0))
  p->dl_prev->dl_next = p->dl_next;
 else
  dlp->dl_next = p->dl_next;

 if (p->dl_next != ((void*)0))
  p->dl_next->dl_prev = p->dl_prev;
 else
  dlp->dl_prev = p->dl_prev;
}
