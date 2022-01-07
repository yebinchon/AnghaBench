
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {scalar_t__ clock; } ;
typedef scalar_t__ s64 ;


 scalar_t__ task_current (struct rq*,struct task_struct*) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static u64 do_task_delta_exec(struct task_struct *p, struct rq *rq)
{
 u64 ns = 0;

 if (task_current(rq, p)) {
  update_rq_clock(rq);
  ns = rq->clock - p->se.exec_start;
  if ((s64)ns < 0)
   ns = 0;
 }

 return ns;
}
