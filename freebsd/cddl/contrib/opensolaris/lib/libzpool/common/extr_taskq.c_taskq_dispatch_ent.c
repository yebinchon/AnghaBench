
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_6__ {void* tqent_arg; int * tqent_func; struct TYPE_6__* tqent_next; struct TYPE_6__* tqent_prev; int tqent_flags; } ;
struct TYPE_5__ {int tq_flags; int tq_lock; int tq_dispatch_cv; TYPE_2__ tq_task; } ;
typedef TYPE_1__ taskq_t ;
typedef TYPE_2__ taskq_ent_t ;
typedef int * task_func_t ;


 int ASSERT (int) ;
 int TASKQ_DYNAMIC ;
 int TQENT_FLAG_PREALLOC ;
 int TQ_FRONT ;
 int cv_signal (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
taskq_dispatch_ent(taskq_t *tq, task_func_t func, void *arg, uint_t flags,
    taskq_ent_t *t)
{
 ASSERT(func != ((void*)0));
 ASSERT(!(tq->tq_flags & TASKQ_DYNAMIC));





 t->tqent_flags |= TQENT_FLAG_PREALLOC;



 mutex_enter(&tq->tq_lock);

 if (flags & TQ_FRONT) {
  t->tqent_next = tq->tq_task.tqent_next;
  t->tqent_prev = &tq->tq_task;
 } else {
  t->tqent_next = &tq->tq_task;
  t->tqent_prev = tq->tq_task.tqent_prev;
 }
 t->tqent_next->tqent_prev = t;
 t->tqent_prev->tqent_next = t;
 t->tqent_func = func;
 t->tqent_arg = arg;
 cv_signal(&tq->tq_dispatch_cv);
 mutex_exit(&tq->tq_lock);
}
