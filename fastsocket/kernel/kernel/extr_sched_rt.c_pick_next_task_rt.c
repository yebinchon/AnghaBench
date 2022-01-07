
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int post_schedule; } ;


 struct task_struct* _pick_next_task_rt (struct rq*) ;
 int dequeue_pushable_task (struct rq*,struct task_struct*) ;
 int has_pushable_tasks (struct rq*) ;

__attribute__((used)) static struct task_struct *pick_next_task_rt(struct rq *rq)
{
 struct task_struct *p = _pick_next_task_rt(rq);


 if (p)
  dequeue_pushable_task(rq, p);
 return p;
}
