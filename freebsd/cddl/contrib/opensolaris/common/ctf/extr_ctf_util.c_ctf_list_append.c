
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* l_next; struct TYPE_3__* l_prev; } ;
typedef TYPE_1__ ctf_list_t ;



void
ctf_list_append(ctf_list_t *lp, void *new)
{
 ctf_list_t *p = lp->l_prev;
 ctf_list_t *q = new;

 lp->l_prev = q;
 q->l_prev = p;
 q->l_next = ((void*)0);

 if (p != ((void*)0))
  p->l_next = q;
 else
  lp->l_next = q;
}
