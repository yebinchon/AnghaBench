
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* l_prev; TYPE_1__* l_next; } ;
typedef TYPE_3__ ctf_list_t ;
struct TYPE_6__ {TYPE_1__* l_next; } ;
struct TYPE_5__ {TYPE_2__* l_prev; } ;



void
ctf_list_delete(ctf_list_t *lp, void *existing)
{
 ctf_list_t *p = existing;

 if (p->l_prev != ((void*)0))
  p->l_prev->l_next = p->l_next;
 else
  lp->l_next = p->l_next;

 if (p->l_next != ((void*)0))
  p->l_next->l_prev = p->l_prev;
 else
  lp->l_prev = p->l_prev;
}
