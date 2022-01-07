
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tp_flags; scalar_t__ tp_current; scalar_t__ tp_minimum; scalar_t__ tp_linger; int tp_mutex; TYPE_3__* tp_active; int tp_njobs; TYPE_2__* tp_tail; TYPE_2__* tp_head; int tp_workcv; int tp_idle; } ;
typedef TYPE_1__ tpool_t ;
struct TYPE_8__ {void (* tpj_func ) (void*) ;struct TYPE_8__* tpj_next; void* tpj_arg; } ;
typedef TYPE_2__ tpool_job_t ;
struct TYPE_9__ {struct TYPE_9__* tpa_next; int tpa_tid; } ;
typedef TYPE_3__ tpool_active_t ;
struct timespec {int tv_sec; } ;
typedef int sigset_t ;


 int CLOCK_MONOTONIC ;
 int PTHREAD_CANCEL_DEFERRED ;
 int PTHREAD_CANCEL_ENABLE ;
 int SIG_SETMASK ;
 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_SUSPEND ;
 int TP_WAIT ;
 int clock_gettime (int ,struct timespec*) ;
 int free (TYPE_2__*) ;
 int job_cleanup ;
 int notify_waiters (TYPE_1__*) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,TYPE_1__*) ;
 int pthread_cond_broadcast (int *) ;
 scalar_t__ pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int pthread_setcancelstate (int ,int *) ;
 int pthread_setcanceltype (int ,int *) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;
 int worker_cleanup ;

__attribute__((used)) static void *
tpool_worker(void *arg)
{
 tpool_t *tpool = (tpool_t *)arg;
 int elapsed;
 tpool_job_t *job;
 void (*func)(void *);
 tpool_active_t active;
 sigset_t maskset;

 pthread_mutex_lock(&tpool->tp_mutex);
 pthread_cleanup_push(worker_cleanup, tpool);





 active.tpa_tid = pthread_self();
 for (;;) {
  elapsed = 0;
  tpool->tp_idle++;
  if (tpool->tp_flags & TP_WAIT)
   notify_waiters(tpool);
  while ((tpool->tp_head == ((void*)0) ||
      (tpool->tp_flags & TP_SUSPEND)) &&
      !(tpool->tp_flags & (TP_DESTROY | TP_ABANDON))) {
   if (tpool->tp_current <= tpool->tp_minimum ||
       tpool->tp_linger == 0) {
    (void) pthread_cond_wait(&tpool->tp_workcv,
        &tpool->tp_mutex);
   } else {
    struct timespec timeout;

    clock_gettime(CLOCK_MONOTONIC, &timeout);
    timeout.tv_sec += tpool->tp_linger;
    if (pthread_cond_timedwait(&tpool->tp_workcv,
        &tpool->tp_mutex, &timeout) != 0) {
     elapsed = 1;
     break;
    }
   }
  }
  tpool->tp_idle--;
  if (tpool->tp_flags & TP_DESTROY)
   break;
  if (tpool->tp_flags & TP_ABANDON) {

   if (tpool->tp_flags & TP_SUSPEND) {
    tpool->tp_flags &= ~TP_SUSPEND;
    (void) pthread_cond_broadcast(&tpool->tp_workcv);
   }
   if (tpool->tp_head == ((void*)0))
    break;
  }
  if ((job = tpool->tp_head) != ((void*)0) &&
      !(tpool->tp_flags & TP_SUSPEND)) {
   elapsed = 0;
   func = job->tpj_func;
   arg = job->tpj_arg;
   tpool->tp_head = job->tpj_next;
   if (job == tpool->tp_tail)
    tpool->tp_tail = ((void*)0);
   tpool->tp_njobs--;
   active.tpa_next = tpool->tp_active;
   tpool->tp_active = &active;
   pthread_mutex_unlock(&tpool->tp_mutex);
   pthread_cleanup_push(job_cleanup, tpool);
   free(job);



   func(arg);





   sigfillset(&maskset);
   (void) pthread_sigmask(SIG_SETMASK, &maskset, ((void*)0));
   (void) pthread_setcanceltype(PTHREAD_CANCEL_DEFERRED,
       ((void*)0));
   (void) pthread_setcancelstate(PTHREAD_CANCEL_ENABLE,
       ((void*)0));
   pthread_cleanup_pop(1);
  }
  if (elapsed && tpool->tp_current > tpool->tp_minimum) {





   break;
  }
 }
 pthread_cleanup_pop(1);
 return (arg);
}
