
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dl_prev; struct TYPE_4__* dl_next; } ;
typedef TYPE_1__ dt_list_t ;


 int dt_list_append (TYPE_1__*,void*) ;

void
dt_list_insert(dt_list_t *dlp, void *after_me, void *new)
{
 dt_list_t *p = after_me;
 dt_list_t *q = new;

 if (p == ((void*)0) || p->dl_next == ((void*)0)) {
  dt_list_append(dlp, new);
  return;
 }

 q->dl_next = p->dl_next;
 q->dl_prev = p;
 p->dl_next = q;
 q->dl_next->dl_prev = q;
}
