
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ owner; int count; int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int pthread_mutex_lock (int *) ;
 scalar_t__ pthread_self () ;

void
omp_set_nest_lock (omp_nest_lock_t *lock)
{
  pthread_t me = pthread_self ();

  if (lock->owner != me)
    {
      pthread_mutex_lock (&lock->lock);
      lock->owner = me;
    }

  lock->count++;
}
