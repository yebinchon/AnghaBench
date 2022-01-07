
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_3__ {scalar_t__ count; int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

void
omp_init_nest_lock (omp_nest_lock_t *lock)
{
  pthread_mutexattr_t attr;

  pthread_mutexattr_init (&attr);
  pthread_mutexattr_settype (&attr, PTHREAD_MUTEX_RECURSIVE);
  pthread_mutex_init (&lock->lock, &attr);
  lock->count = 0;
  pthread_mutexattr_destroy (&attr);
}
