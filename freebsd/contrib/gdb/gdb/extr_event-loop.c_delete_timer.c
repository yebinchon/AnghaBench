
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdb_timer {int timer_id; struct gdb_timer* next; } ;
struct TYPE_4__ {scalar_t__ timeout_valid; } ;
struct TYPE_3__ {struct gdb_timer* first_timer; } ;


 TYPE_2__ gdb_notifier ;
 TYPE_1__ timer_list ;
 int xfree (struct gdb_timer*) ;

void
delete_timer (int id)
{
  struct gdb_timer *timer_ptr, *prev_timer = ((void*)0);



  for (timer_ptr = timer_list.first_timer; timer_ptr != ((void*)0);
       timer_ptr = timer_ptr->next)
    {
      if (timer_ptr->timer_id == id)
 break;
    }

  if (timer_ptr == ((void*)0))
    return;

  if (timer_ptr == timer_list.first_timer)
    timer_list.first_timer = timer_ptr->next;
  else
    {
      for (prev_timer = timer_list.first_timer;
    prev_timer->next != timer_ptr;
    prev_timer = prev_timer->next)
 ;
      prev_timer->next = timer_ptr->next;
    }
  xfree (timer_ptr);

  gdb_notifier.timeout_valid = 0;
}
