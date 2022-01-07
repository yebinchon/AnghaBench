
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bar_nthr; scalar_t__ bar_numin; int bar_sem; int bar_lock; } ;
typedef TYPE_1__ barrier_t ;


 int USYNC_THREAD ;
 int pthread_mutex_init (int *,int *) ;
 int sem_init (int *,int ,int ) ;
 int sema_init (int *,int ,int ,int *) ;

void
barrier_init(barrier_t *bar, int nthreads)
{
 pthread_mutex_init(&bar->bar_lock, ((void*)0));



 sem_init(&bar->bar_sem, 0, 0);


 bar->bar_numin = 0;
 bar->bar_nthr = nthreads;
}
