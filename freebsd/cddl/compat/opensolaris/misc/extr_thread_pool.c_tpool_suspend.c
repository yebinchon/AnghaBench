
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_mutex; int tp_flags; } ;
typedef TYPE_1__ tpool_t ;


 int TP_SUSPEND ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
tpool_suspend(tpool_t *tpool)
{

 pthread_mutex_lock(&tpool->tp_mutex);
 tpool->tp_flags |= TP_SUSPEND;
 pthread_mutex_unlock(&tpool->tp_mutex);
}
