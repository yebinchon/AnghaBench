
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* dl_next; struct TYPE_3__* dl_prev; } ;
typedef TYPE_1__ dt_list_t ;


 int assert (int ) ;

void
dt_list_append(dt_list_t *dlp, void *new)
{
 dt_list_t *p = dlp->dl_prev;
 dt_list_t *q = new;

 dlp->dl_prev = q;
 q->dl_prev = p;
 q->dl_next = ((void*)0);

 if (p != ((void*)0)) {
  assert(p->dl_next == ((void*)0));
  p->dl_next = q;
 } else {
  assert(dlp->dl_next == ((void*)0));
  dlp->dl_next = q;
 }
}
