
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready; } ;
typedef TYPE_1__ async_signal_handler ;


 int async_handler_ready ;

void
mark_async_signal_handler (async_signal_handler * async_handler_ptr)
{
  ((async_signal_handler *) async_handler_ptr)->ready = 1;
  async_handler_ready = 1;
}
