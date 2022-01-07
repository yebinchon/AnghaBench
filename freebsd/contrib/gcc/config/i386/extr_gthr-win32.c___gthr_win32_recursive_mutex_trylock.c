
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; scalar_t__ owner; int counter; } ;
typedef TYPE_1__ __gthread_recursive_mutex_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ __GTHR_W32_InterlockedCompareExchange (int *,int ,int) ;

int
__gthr_win32_recursive_mutex_trylock (__gthread_recursive_mutex_t *mutex)
{
  DWORD me = GetCurrentThreadId();
  if (__GTHR_W32_InterlockedCompareExchange (&mutex->counter, 0, -1) < 0)
    {
      mutex->depth = 1;
      mutex->owner = me;
    }
  else if (mutex->owner == me)
    ++(mutex->depth);
  else
    return 1;

  return 0;
}
