
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 scalar_t__ pthread_mutex_trylock (int *) ;

int
omp_test_nest_lock (omp_nest_lock_t *lock)
{
  if (pthread_mutex_trylock (&lock->lock) == 0)
    return ++lock->count;
  return 0;
}
