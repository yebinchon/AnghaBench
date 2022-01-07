
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tp_current; int tp_mutex; int tp_busycv; int tp_waitcv; int tp_flags; TYPE_2__* tp_active; int tp_workcv; } ;
typedef TYPE_1__ tpool_t ;
struct TYPE_6__ {int tpa_tid; struct TYPE_6__* tpa_next; } ;
typedef TYPE_2__ tpool_active_t ;
typedef int _Voidfp ;


 int TP_DESTROY ;
 int TP_SUSPEND ;
 int TP_WAIT ;
 int delete_pool (TYPE_1__*) ;
 int pthread_cancel (int ) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock ;

void
tpool_destroy(tpool_t *tpool)
{
 tpool_active_t *activep;

 pthread_mutex_lock(&tpool->tp_mutex);
 pthread_cleanup_push((_Voidfp)pthread_mutex_unlock, &tpool->tp_mutex);


 tpool->tp_flags |= TP_DESTROY;
 tpool->tp_flags &= ~TP_SUSPEND;
 (void) pthread_cond_broadcast(&tpool->tp_workcv);


 for (activep = tpool->tp_active; activep; activep = activep->tpa_next)
  (void) pthread_cancel(activep->tpa_tid);


 while (tpool->tp_active != ((void*)0)) {
  tpool->tp_flags |= TP_WAIT;
  (void) pthread_cond_wait(&tpool->tp_waitcv, &tpool->tp_mutex);
 }


 while (tpool->tp_current != 0)
  (void) pthread_cond_wait(&tpool->tp_busycv, &tpool->tp_mutex);

 pthread_cleanup_pop(1);
 delete_pool(tpool);
}
