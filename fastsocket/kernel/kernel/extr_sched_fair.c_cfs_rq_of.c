
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;
struct rq {struct cfs_rq cfs; } ;


 struct task_struct* task_of (struct sched_entity*) ;
 struct rq* task_rq (struct task_struct*) ;

__attribute__((used)) static inline struct cfs_rq *cfs_rq_of(struct sched_entity *se)
{
 struct task_struct *p = task_of(se);
 struct rq *rq = task_rq(p);

 return &rq->cfs;
}
