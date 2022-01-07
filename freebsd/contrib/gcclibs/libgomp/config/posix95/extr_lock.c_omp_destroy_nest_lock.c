
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int pthread_mutex_destroy (int *) ;

void
omp_destroy_nest_lock (omp_nest_lock_t *lock)
{
  pthread_mutex_destroy (&lock->lock);
}
