
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ done; int started; } ;
typedef TYPE_1__ __gthread_once_t ;


 int EINVAL ;
 scalar_t__ InterlockedIncrement (int *) ;
 int Sleep (int ) ;
 scalar_t__ TRUE ;
 void stub1 () ;

int
__gthr_win32_once (__gthread_once_t *once, void (*func) (void))
{
  if (once == ((void*)0) || func == ((void*)0))
    return EINVAL;

  if (! once->done)
    {
      if (InterlockedIncrement (&(once->started)) == 0)
        {
   (*func) ();
   once->done = TRUE;
 }
      else
 {





   while (! once->done)
     Sleep (0);
 }
    }
  return 0;
}
