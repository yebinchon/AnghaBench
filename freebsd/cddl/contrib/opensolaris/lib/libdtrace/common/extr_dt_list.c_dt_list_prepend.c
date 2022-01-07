
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* dl_prev; struct TYPE_3__* dl_next; } ;
typedef TYPE_1__ dt_list_t ;


 int assert (int ) ;

void
dt_list_prepend(dt_list_t *dlp, void *new)
{
 dt_list_t *p = new;
 dt_list_t *q = dlp->dl_next;

 dlp->dl_next = p;
 p->dl_prev = ((void*)0);
 p->dl_next = q;

 if (q != ((void*)0)) {
  assert(q->dl_prev == ((void*)0));
  q->dl_prev = p;
 } else {
  assert(dlp->dl_prev == ((void*)0));
  dlp->dl_prev = p;
 }
}
