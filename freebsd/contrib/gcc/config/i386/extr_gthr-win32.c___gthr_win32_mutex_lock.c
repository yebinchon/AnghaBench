
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int counter; int sema; } ;
typedef TYPE_1__ __gthread_mutex_t ;


 int INFINITE ;
 int InterlockedDecrement (int *) ;
 scalar_t__ InterlockedIncrement (int *) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

int
__gthr_win32_mutex_lock (__gthread_mutex_t *mutex)
{
  if (InterlockedIncrement (&mutex->counter) == 0 ||
      WaitForSingleObject (mutex->sema, INFINITE) == WAIT_OBJECT_0)
    return 0;
  else
    {


      InterlockedDecrement (&mutex->counter);
      return 1;
    }
}
