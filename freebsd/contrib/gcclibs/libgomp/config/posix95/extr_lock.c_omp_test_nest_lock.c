
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ owner; int count; int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 scalar_t__ pthread_mutex_trylock (int *) ;
 scalar_t__ pthread_self () ;

int
omp_test_nest_lock (omp_nest_lock_t *lock)
{
  pthread_t me = pthread_self ();

  if (lock->owner != me)
    {
      if (pthread_mutex_trylock (&lock->lock) != 0)
 return 0;
      lock->owner = me;
    }

  return ++lock->count;
}
