
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* q_back; struct TYPE_3__* q_forw; } ;
typedef TYPE_1__ qelem ;



void
rem_que(qelem *elem)
{
  qelem *p = elem->q_forw;
  qelem *p2 = elem->q_back;

  p2->q_forw = p;
  p->q_back = p2;
}
