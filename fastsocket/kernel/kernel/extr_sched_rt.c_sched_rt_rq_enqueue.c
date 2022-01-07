
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_rq {scalar_t__ rt_nr_running; } ;
struct TYPE_2__ {int curr; } ;


 int resched_task (int ) ;
 TYPE_1__* rq_of_rt_rq (struct rt_rq*) ;

__attribute__((used)) static inline void sched_rt_rq_enqueue(struct rt_rq *rt_rq)
{
 if (rt_rq->rt_nr_running)
  resched_task(rq_of_rt_rq(rt_rq)->curr);
}
