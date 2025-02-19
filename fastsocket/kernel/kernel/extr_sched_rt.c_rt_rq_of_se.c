
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;
struct rq {struct rt_rq rt; } ;


 struct task_struct* rt_task_of (struct sched_rt_entity*) ;
 struct rq* task_rq (struct task_struct*) ;

__attribute__((used)) static inline struct rt_rq *rt_rq_of_se(struct sched_rt_entity *rt_se)
{
 struct task_struct *p = rt_task_of(rt_se);
 struct rq *rq = task_rq(p);

 return &rq->rt;
}
