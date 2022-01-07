
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {int rt_nr_running; } ;


 int WARN_ON (int) ;
 int inc_rt_group (struct sched_rt_entity*,struct rt_rq*) ;
 int inc_rt_migration (struct sched_rt_entity*,struct rt_rq*) ;
 int inc_rt_prio (struct rt_rq*,int) ;
 int rt_prio (int) ;
 int rt_se_prio (struct sched_rt_entity*) ;

__attribute__((used)) static inline
void inc_rt_tasks(struct sched_rt_entity *rt_se, struct rt_rq *rt_rq)
{
 int prio = rt_se_prio(rt_se);

 WARN_ON(!rt_prio(prio));
 rt_rq->rt_nr_running++;

 inc_rt_prio(rt_rq, prio);
 inc_rt_migration(rt_se, rt_rq);
 inc_rt_group(rt_se, rt_rq);
}
