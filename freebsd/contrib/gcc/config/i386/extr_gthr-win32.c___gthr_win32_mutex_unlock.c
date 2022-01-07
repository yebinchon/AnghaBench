
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sema; int counter; } ;
typedef TYPE_1__ __gthread_mutex_t ;


 scalar_t__ InterlockedDecrement (int *) ;
 scalar_t__ ReleaseSemaphore (int ,int,int *) ;

int
__gthr_win32_mutex_unlock (__gthread_mutex_t *mutex)
{
  if (InterlockedDecrement (&mutex->counter) >= 0)
    return ReleaseSemaphore (mutex->sema, 1, ((void*)0)) ? 0 : 1;
  else
    return 0;
}
