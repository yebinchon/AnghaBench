
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct gdb_timer {int client_data; int (* proc ) (int ) ;struct gdb_timer* next; TYPE_1__ when; } ;
struct TYPE_6__ {scalar_t__ timeout_valid; } ;
struct TYPE_5__ {struct gdb_timer* first_timer; } ;


 TYPE_3__ gdb_notifier ;
 int gettimeofday (struct timeval*,int *) ;
 int stub1 (int ) ;
 TYPE_2__ timer_list ;
 int xfree (struct gdb_timer*) ;

__attribute__((used)) static void
handle_timer_event (int dummy)
{
  struct timeval time_now;
  struct gdb_timer *timer_ptr, *saved_timer;

  gettimeofday (&time_now, ((void*)0));
  timer_ptr = timer_list.first_timer;

  while (timer_ptr != ((void*)0))
    {
      if ((timer_ptr->when.tv_sec > time_now.tv_sec) ||
   ((timer_ptr->when.tv_sec == time_now.tv_sec) &&
    (timer_ptr->when.tv_usec > time_now.tv_usec)))
 break;


      timer_list.first_timer = timer_ptr->next;
      saved_timer = timer_ptr;
      timer_ptr = timer_ptr->next;

      (*saved_timer->proc) (saved_timer->client_data);
      xfree (saved_timer);
    }

  gdb_notifier.timeout_valid = 0;
}
