
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {struct task_struct* idle; } ;


 int calc_load_account_active (struct rq*) ;
 int sched_goidle ;
 int schedstat_inc (struct rq*,int ) ;

__attribute__((used)) static struct task_struct *pick_next_task_idle(struct rq *rq)
{
 schedstat_inc(rq, sched_goidle);

 calc_load_account_active(rq);
 return rq->idle;
}
