
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int count; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int pthread_mutex_unlock (int *) ;

void
omp_unset_nest_lock (omp_nest_lock_t *lock)
{
  lock->count--;
  pthread_mutex_unlock (&lock->lock);
}
