
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ count; int lock; scalar_t__ owner; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int pthread_mutex_unlock (int *) ;

void
omp_unset_nest_lock (omp_nest_lock_t *lock)
{
  lock->count--;

  if (lock->count == 0)
    {
      lock->owner = (pthread_t) 0;
      pthread_mutex_unlock (&lock->lock);
    }
}
