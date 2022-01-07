
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; int sema; int counter; scalar_t__ owner; } ;
typedef TYPE_1__ __gthread_recursive_mutex_t ;


 scalar_t__ InterlockedDecrement (int *) ;
 scalar_t__ ReleaseSemaphore (int ,int,int *) ;

int
__gthr_win32_recursive_mutex_unlock (__gthread_recursive_mutex_t *mutex)
{
  --(mutex->depth);
  if (mutex->depth == 0)
    {
      mutex->owner = 0;

      if (InterlockedDecrement (&mutex->counter) >= 0)
 return ReleaseSemaphore (mutex->sema, 1, ((void*)0)) ? 0 : 1;
    }

  return 0;
}
