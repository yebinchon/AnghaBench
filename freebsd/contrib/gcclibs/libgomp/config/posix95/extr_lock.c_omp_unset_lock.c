
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int omp_lock_t ;


 int pthread_mutex_unlock (int *) ;

void
omp_unset_lock (omp_lock_t *lock)
{
  pthread_mutex_unlock (lock);
}
