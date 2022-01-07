
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {scalar_t__ skip_clock_update; scalar_t__ clock; } ;
typedef scalar_t__ s64 ;


 int cpu_of (struct rq*) ;
 scalar_t__ sched_clock_cpu (int ) ;

__attribute__((used)) static void update_rq_clock(struct rq *rq)
{
 s64 delta;

 if (rq->skip_clock_update > 0)
  return;

 delta = sched_clock_cpu(cpu_of(rq)) - rq->clock;
 rq->clock += delta;
}
