
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int curr; } ;


 int requeue_task_rt (struct rq*,int ,int ) ;

__attribute__((used)) static void yield_task_rt(struct rq *rq)
{
 requeue_task_rt(rq, rq->curr, 0);
}
