
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next_handler; } ;
typedef TYPE_1__ async_signal_handler ;
struct TYPE_6__ {TYPE_1__* last_handler; TYPE_1__* first_handler; } ;


 TYPE_3__ sighandler_list ;
 int xfree (TYPE_1__*) ;

void
delete_async_signal_handler (async_signal_handler ** async_handler_ptr)
{
  async_signal_handler *prev_ptr;

  if (sighandler_list.first_handler == (*async_handler_ptr))
    {
      sighandler_list.first_handler = (*async_handler_ptr)->next_handler;
      if (sighandler_list.first_handler == ((void*)0))
 sighandler_list.last_handler = ((void*)0);
    }
  else
    {
      prev_ptr = sighandler_list.first_handler;
      while (prev_ptr->next_handler != (*async_handler_ptr) && prev_ptr)
 prev_ptr = prev_ptr->next_handler;
      prev_ptr->next_handler = (*async_handler_ptr)->next_handler;
      if (sighandler_list.last_handler == (*async_handler_ptr))
 sighandler_list.last_handler = prev_ptr;
    }
  xfree ((*async_handler_ptr));
  (*async_handler_ptr) = ((void*)0);
}
