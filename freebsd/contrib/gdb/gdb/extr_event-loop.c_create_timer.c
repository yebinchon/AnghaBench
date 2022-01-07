
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int timer_handler_func ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {int tv_sec; int tv_usec; } ;
struct gdb_timer {int timer_id; struct gdb_timer* next; TYPE_1__ when; int client_data; int * proc; } ;
typedef int gdb_timer ;
typedef int gdb_client_data ;
struct TYPE_6__ {scalar_t__ timeout_valid; } ;
struct TYPE_5__ {int num_timers; struct gdb_timer* first_timer; } ;


 TYPE_3__ gdb_notifier ;
 int gettimeofday (struct timeval*,int *) ;
 TYPE_2__ timer_list ;
 scalar_t__ xmalloc (int) ;

int
create_timer (int milliseconds, timer_handler_func * proc, gdb_client_data client_data)
{
  struct gdb_timer *timer_ptr, *timer_index, *prev_timer;
  struct timeval time_now, delta;


  delta.tv_sec = milliseconds / 1000;

  delta.tv_usec = (milliseconds % 1000) * 1000;

  gettimeofday (&time_now, ((void*)0));

  timer_ptr = (struct gdb_timer *) xmalloc (sizeof (gdb_timer));
  timer_ptr->when.tv_sec = time_now.tv_sec + delta.tv_sec;
  timer_ptr->when.tv_usec = time_now.tv_usec + delta.tv_usec;

  if (timer_ptr->when.tv_usec >= 1000000)
    {
      timer_ptr->when.tv_sec += 1;
      timer_ptr->when.tv_usec -= 1000000;
    }
  timer_ptr->proc = proc;
  timer_ptr->client_data = client_data;
  timer_list.num_timers++;
  timer_ptr->timer_id = timer_list.num_timers;




  for (timer_index = timer_list.first_timer;
       timer_index != ((void*)0);
       timer_index = timer_index->next)
    {


      if ((timer_index->when.tv_sec > timer_ptr->when.tv_sec) ||
   ((timer_index->when.tv_sec == timer_ptr->when.tv_sec)
    && (timer_index->when.tv_usec > timer_ptr->when.tv_usec)))
 break;
    }

  if (timer_index == timer_list.first_timer)
    {
      timer_ptr->next = timer_list.first_timer;
      timer_list.first_timer = timer_ptr;

    }
  else
    {
      for (prev_timer = timer_list.first_timer;
    prev_timer->next != timer_index;
    prev_timer = prev_timer->next)
 ;

      prev_timer->next = timer_ptr;
      timer_ptr->next = timer_index;
    }

  gdb_notifier.timeout_valid = 0;
  return timer_ptr->timer_id;
}
