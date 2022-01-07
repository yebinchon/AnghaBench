
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter; } ;
typedef TYPE_1__ __gthread_mutex_t ;


 scalar_t__ __GTHR_W32_InterlockedCompareExchange (int *,int ,int) ;

int
__gthr_win32_mutex_trylock (__gthread_mutex_t *mutex)
{
  if (__GTHR_W32_InterlockedCompareExchange (&mutex->counter, 0, -1) < 0)
    return 0;
  else
    return 1;
}
