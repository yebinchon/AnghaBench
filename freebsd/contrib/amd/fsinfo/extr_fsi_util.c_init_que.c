
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* q_back; struct TYPE_3__* q_forw; } ;
typedef TYPE_1__ qelem ;



void
init_que(qelem *q)
{
  q->q_forw = q->q_back = q;
}
