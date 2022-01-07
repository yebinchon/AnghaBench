
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client_data; int (* proc ) (int ) ;scalar_t__ ready; struct TYPE_3__* next_handler; } ;
typedef TYPE_1__ async_signal_handler ;
struct TYPE_4__ {TYPE_1__* first_handler; } ;


 scalar_t__ async_handler_ready ;
 TYPE_2__ sighandler_list ;
 int stub1 (int ) ;

__attribute__((used)) static void
invoke_async_signal_handler (void)
{
  async_signal_handler *async_handler_ptr;

  if (async_handler_ready == 0)
    return;
  async_handler_ready = 0;



  while (1)
    {
      for (async_handler_ptr = sighandler_list.first_handler;
    async_handler_ptr != ((void*)0);
    async_handler_ptr = async_handler_ptr->next_handler)
 {
   if (async_handler_ptr->ready)
     break;
 }
      if (async_handler_ptr == ((void*)0))
 break;
      async_handler_ptr->ready = 0;
      (*async_handler_ptr->proc) (async_handler_ptr->client_data);
    }

  return;
}
