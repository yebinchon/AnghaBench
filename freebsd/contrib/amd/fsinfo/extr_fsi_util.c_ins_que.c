
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* q_back; struct TYPE_4__* q_forw; } ;
typedef TYPE_1__ qelem ;



void
ins_que(qelem *elem, qelem *pred)
{
  qelem *p;

  p = pred->q_forw;
  elem->q_back = pred;
  elem->q_forw = p;
  pred->q_forw = elem;
  p->q_back = elem;
}
