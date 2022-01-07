
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; scalar_t__ owner; int counter; int sema; } ;
typedef TYPE_1__ __gthread_recursive_mutex_t ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetCurrentThreadId () ;
 int INFINITE ;
 int InterlockedDecrement (int *) ;
 scalar_t__ InterlockedIncrement (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

int
__gthr_win32_recursive_mutex_lock (__gthread_recursive_mutex_t *mutex)
{
  DWORD me = GetCurrentThreadId();
  if (InterlockedIncrement (&mutex->counter) == 0)
    {
      mutex->depth = 1;
      mutex->owner = me;
    }
  else if (mutex->owner == me)
    {
      InterlockedDecrement (&mutex->counter);
      ++(mutex->depth);
    }
  else if (WaitForSingleObject (mutex->sema, INFINITE) == WAIT_OBJECT_0)
    {
      mutex->depth = 1;
      mutex->owner = me;
    }
  else
    {


      InterlockedDecrement (&mutex->counter);
      return 1;
    }
  return 0;
}
