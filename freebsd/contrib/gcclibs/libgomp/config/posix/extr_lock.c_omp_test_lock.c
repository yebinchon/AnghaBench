
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_lock_t ;


 scalar_t__ pthread_mutex_trylock (int *) ;

int
omp_test_lock (omp_lock_t *lock)
{
  return pthread_mutex_trylock (lock) == 0;
}
