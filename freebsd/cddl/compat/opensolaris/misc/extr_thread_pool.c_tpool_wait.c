
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_mutex; int tp_waitcv; int tp_flags; int * tp_active; int * tp_head; } ;
typedef TYPE_1__ tpool_t ;
typedef int _Voidfp ;


 int TP_WAIT ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock ;

void
tpool_wait(tpool_t *tpool)
{

 pthread_mutex_lock(&tpool->tp_mutex);
 pthread_cleanup_push((_Voidfp)pthread_mutex_unlock, &tpool->tp_mutex);
 while (tpool->tp_head != ((void*)0) || tpool->tp_active != ((void*)0)) {
  tpool->tp_flags |= TP_WAIT;
  (void) pthread_cond_wait(&tpool->tp_waitcv, &tpool->tp_mutex);
 }
 pthread_cleanup_pop(1);
}
