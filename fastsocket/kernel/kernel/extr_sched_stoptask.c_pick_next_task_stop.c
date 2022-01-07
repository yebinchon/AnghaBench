
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; } ;
struct rq {struct task_struct* stop; } ;


 scalar_t__ TASK_RUNNING ;

__attribute__((used)) static struct task_struct *pick_next_task_stop(struct rq *rq)
{
 struct task_struct *stop = rq->stop;

 if (stop && stop->state == TASK_RUNNING)
  return stop;

 return ((void*)0);
}
