
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_8__ {int tq_nthreads; scalar_t__ tq_nalloc; int tq_maxalloc_cv; int tq_wait_cv; int tq_dispatch_cv; int tq_lock; int tq_threadlock; struct TYPE_8__* tq_threadlist; int * tq_freelist; scalar_t__ tq_minalloc; int tq_flags; } ;
typedef TYPE_1__ taskq_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int TASKQ_ACTIVE ;
 int cv_broadcast (int *) ;
 int cv_destroy (int *) ;
 int cv_wait (int *,int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_destroy (int *) ;
 int task_alloc (TYPE_1__*,int ) ;
 int task_free (TYPE_1__*,int ) ;
 int taskq_wait (TYPE_1__*) ;
 int thr_join (TYPE_1__,int *,int *) ;

void
taskq_destroy(taskq_t *tq)
{
 int t;
 int nthreads = tq->tq_nthreads;

 taskq_wait(tq);

 mutex_enter(&tq->tq_lock);

 tq->tq_flags &= ~TASKQ_ACTIVE;
 cv_broadcast(&tq->tq_dispatch_cv);

 while (tq->tq_nthreads != 0)
  cv_wait(&tq->tq_wait_cv, &tq->tq_lock);

 tq->tq_minalloc = 0;
 while (tq->tq_nalloc != 0) {
  ASSERT(tq->tq_freelist != ((void*)0));
  task_free(tq, task_alloc(tq, KM_SLEEP));
 }

 mutex_exit(&tq->tq_lock);

 for (t = 0; t < nthreads; t++)
  (void) thr_join(tq->tq_threadlist[t], ((void*)0), ((void*)0));

 kmem_free(tq->tq_threadlist, nthreads * sizeof (thread_t));

 rw_destroy(&tq->tq_threadlock);
 mutex_destroy(&tq->tq_lock);
 cv_destroy(&tq->tq_dispatch_cv);
 cv_destroy(&tq->tq_wait_cv);
 cv_destroy(&tq->tq_maxalloc_cv);

 kmem_free(tq, sizeof (taskq_t));
}
