
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int taskqid_t ;
struct TYPE_7__ {scalar_t__ tqent_flags; void* tqent_arg; int (* tqent_func ) (void*) ;struct TYPE_7__* tqent_next; struct TYPE_7__* tqent_prev; } ;
struct TYPE_6__ {int tq_flags; int tq_lock; int tq_dispatch_cv; TYPE_2__ tq_task; } ;
typedef TYPE_1__ taskq_t ;
typedef TYPE_2__ taskq_ent_t ;
typedef int (* task_func_t ) (void*) ;


 int ASSERT (int) ;
 int TASKQ_ACTIVE ;
 int TQ_FRONT ;
 int cv_signal (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* task_alloc (TYPE_1__*,int) ;
 scalar_t__ taskq_now ;

taskqid_t
taskq_dispatch(taskq_t *tq, task_func_t func, void *arg, uint_t tqflags)
{
 taskq_ent_t *t;

 if (taskq_now) {
  func(arg);
  return (1);
 }

 mutex_enter(&tq->tq_lock);
 ASSERT(tq->tq_flags & TASKQ_ACTIVE);
 if ((t = task_alloc(tq, tqflags)) == ((void*)0)) {
  mutex_exit(&tq->tq_lock);
  return (0);
 }
 if (tqflags & TQ_FRONT) {
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
 t->tqent_flags = 0;
 cv_signal(&tq->tq_dispatch_cv);
 mutex_exit(&tq->tq_lock);
 return (1);
}
