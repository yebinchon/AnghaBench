
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sig_handler_func ;
typedef int gdb_client_data ;
struct TYPE_4__ {struct TYPE_4__* next_handler; int client_data; int * proc; scalar_t__ ready; } ;
typedef TYPE_1__ async_signal_handler ;
struct TYPE_5__ {TYPE_1__* last_handler; TYPE_1__* first_handler; } ;


 TYPE_2__ sighandler_list ;
 scalar_t__ xmalloc (int) ;

async_signal_handler *
create_async_signal_handler (sig_handler_func * proc, gdb_client_data client_data)
{
  async_signal_handler *async_handler_ptr;

  async_handler_ptr =
    (async_signal_handler *) xmalloc (sizeof (async_signal_handler));
  async_handler_ptr->ready = 0;
  async_handler_ptr->next_handler = ((void*)0);
  async_handler_ptr->proc = proc;
  async_handler_ptr->client_data = client_data;
  if (sighandler_list.first_handler == ((void*)0))
    sighandler_list.first_handler = async_handler_ptr;
  else
    sighandler_list.last_handler->next_handler = async_handler_ptr;
  sighandler_list.last_handler = async_handler_ptr;
  return async_handler_ptr;
}
