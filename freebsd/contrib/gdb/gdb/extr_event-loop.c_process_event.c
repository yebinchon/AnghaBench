
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; struct TYPE_4__* next_event; int (* proc ) (int) ;} ;
typedef TYPE_1__ gdb_event ;
typedef int (* event_handler_func ) (int) ;
struct TYPE_5__ {TYPE_1__* last_event; TYPE_1__* first_event; } ;


 scalar_t__ check_async_ready () ;
 TYPE_3__ event_queue ;
 int invoke_async_signal_handler () ;
 int stub1 (int) ;
 int xfree (TYPE_1__*) ;

__attribute__((used)) static int
process_event (void)
{
  gdb_event *event_ptr, *prev_ptr;
  event_handler_func *proc;
  int fd;





  if (check_async_ready ())
    {
      invoke_async_signal_handler ();
      return 1;
    }




  for (event_ptr = event_queue.first_event; event_ptr != ((void*)0);
       event_ptr = event_ptr->next_event)
    {


      proc = event_ptr->proc;
      fd = event_ptr->fd;
      if (event_queue.first_event == event_ptr)
 {
   event_queue.first_event = event_ptr->next_event;
   if (event_ptr->next_event == ((void*)0))
     event_queue.last_event = ((void*)0);
 }
      else
 {
   prev_ptr = event_queue.first_event;
   while (prev_ptr->next_event != event_ptr)
     prev_ptr = prev_ptr->next_event;

   prev_ptr->next_event = event_ptr->next_event;
   if (event_ptr->next_event == ((void*)0))
     event_queue.last_event = prev_ptr;
 }
      xfree (event_ptr);


      (*proc) (fd);
      return 1;
    }


  return 0;
}
