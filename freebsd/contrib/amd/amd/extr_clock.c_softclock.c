
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int opaque_t ;
typedef int (* callout_fun ) (int ) ;
struct TYPE_4__ {scalar_t__ c_time; struct TYPE_4__* c_next; int c_arg; int (* c_fn ) (int ) ;} ;
typedef TYPE_1__ callout ;
struct TYPE_5__ {TYPE_1__* c_next; } ;


 TYPE_3__ callouts ;
 scalar_t__ clocktime (int *) ;
 int do_task_notify () ;
 int free_callout (TYPE_1__*) ;
 int stub1 (int ) ;
 scalar_t__ task_notify_todo ;

int
softclock(void)
{
  time_t now;
  callout *cp;

  do {
    if (task_notify_todo)
      do_task_notify();

    now = clocktime(((void*)0));




    while ((cp = callouts.c_next) && cp->c_time <= now) {
      callout_fun *fn = cp->c_fn;
      opaque_t fn_arg = cp->c_arg;

      callouts.c_next = cp->c_next;
      free_callout(cp);
      (*fn) (fn_arg);
    }

  } while (task_notify_todo);





  if ((cp = callouts.c_next))
    return cp->c_time - now;
  return 0;
}
