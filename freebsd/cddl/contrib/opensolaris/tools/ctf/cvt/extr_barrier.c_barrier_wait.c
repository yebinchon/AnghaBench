
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bar_numin; scalar_t__ bar_nthr; int bar_lock; int bar_sem; } ;
typedef TYPE_1__ barrier_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;
 int sema_post (int *) ;
 int sema_wait (int *) ;

int
barrier_wait(barrier_t *bar)
{
 pthread_mutex_lock(&bar->bar_lock);

 if (++bar->bar_numin < bar->bar_nthr) {
  pthread_mutex_unlock(&bar->bar_lock);



  sem_wait(&bar->bar_sem);


  return (0);

 } else {
  int i;


  bar->bar_numin = 0;
  for (i = 1; i < bar->bar_nthr; i++)



   sem_post(&bar->bar_sem);

  pthread_mutex_unlock(&bar->bar_lock);

  return (1);
 }
}
