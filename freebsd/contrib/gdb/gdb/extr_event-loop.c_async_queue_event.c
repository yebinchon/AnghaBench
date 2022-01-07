
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ queue_position ;
struct TYPE_4__ {struct TYPE_4__* next_event; } ;
typedef TYPE_1__ gdb_event ;
struct TYPE_5__ {TYPE_1__* first_event; TYPE_1__* last_event; } ;


 scalar_t__ HEAD ;
 scalar_t__ TAIL ;
 TYPE_2__ event_queue ;

__attribute__((used)) static void
async_queue_event (gdb_event * event_ptr, queue_position position)
{
  if (position == TAIL)
    {


      event_ptr->next_event = ((void*)0);
      if (event_queue.first_event == ((void*)0))
 event_queue.first_event = event_ptr;
      else
 event_queue.last_event->next_event = event_ptr;
      event_queue.last_event = event_ptr;
    }
  else if (position == HEAD)
    {


      event_ptr->next_event = event_queue.first_event;
      if (event_queue.first_event == ((void*)0))
 event_queue.last_event = event_ptr;
      event_queue.first_event = event_ptr;
    }
}
