
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct TYPE_3__ {int tq_nthreads; scalar_t__* tq_threadlist; } ;
typedef TYPE_1__ taskq_t ;


 scalar_t__ taskq_now ;

int
taskq_member(taskq_t *tq, void *t)
{
 int i;

 if (taskq_now)
  return (1);

 for (i = 0; i < tq->tq_nthreads; i++)
  if (tq->tq_threadlist[i] == (thread_t)(uintptr_t)t)
   return (1);

 return (0);
}
