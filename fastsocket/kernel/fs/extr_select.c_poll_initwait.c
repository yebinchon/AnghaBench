
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_wqueues {scalar_t__ inline_index; int * table; scalar_t__ error; scalar_t__ triggered; int polling_task; int pt; } ;


 int __pollwait ;
 int current ;
 int init_poll_funcptr (int *,int ) ;

void poll_initwait(struct poll_wqueues *pwq)
{
 init_poll_funcptr(&pwq->pt, __pollwait);
 pwq->polling_task = current;
 pwq->triggered = 0;
 pwq->error = 0;
 pwq->table = ((void*)0);
 pwq->inline_index = 0;
}
