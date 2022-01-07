
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ owner; int lock; } ;
typedef TYPE_1__ omp_nest_lock_t ;


 int pthread_mutex_init (int *,int *) ;

void
omp_init_nest_lock (omp_nest_lock_t *lock)
{
  pthread_mutex_init (&lock->lock, ((void*)0));
  lock->owner = (pthread_t) 0;
  lock->count = 0;
}
