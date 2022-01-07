
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem2; int sem1; int mutex2; int mutex1; } ;
typedef TYPE_1__ gomp_barrier_t ;


 int gomp_mutex_destroy (int *) ;
 int gomp_mutex_lock (int *) ;
 int gomp_mutex_unlock (int *) ;
 int gomp_sem_destroy (int *) ;

void
gomp_barrier_destroy (gomp_barrier_t *bar)
{

  gomp_mutex_lock (&bar->mutex1);
  gomp_mutex_unlock (&bar->mutex1);

  gomp_mutex_destroy (&bar->mutex1);

  gomp_mutex_destroy (&bar->mutex2);

  gomp_sem_destroy (&bar->sem1);
  gomp_sem_destroy (&bar->sem2);
}
