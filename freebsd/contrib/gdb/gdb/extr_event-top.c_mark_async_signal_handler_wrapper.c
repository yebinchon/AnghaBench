
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_signal_handler {int dummy; } ;


 int mark_async_signal_handler (struct async_signal_handler*) ;

void
mark_async_signal_handler_wrapper (void *token)
{
  mark_async_signal_handler ((struct async_signal_handler *) token);
}
