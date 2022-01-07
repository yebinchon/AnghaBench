
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long longint; } ;
struct continuation_arg {TYPE_3__* next; TYPE_1__ data; } ;
struct TYPE_5__ {long longint; } ;
struct TYPE_6__ {TYPE_2__ data; } ;


 int bpstat_do_actions (int *) ;
 long get_run_time () ;
 char* lim_at_start ;
 int printf_unfiltered (char*,long,char,...) ;
 scalar_t__ sbrk (int ) ;
 int stop_bpstat ;

void
command_line_handler_continuation (struct continuation_arg *arg)
{
  extern int display_time;
  extern int display_space;

  long time_at_cmd_start = arg->data.longint;
  long space_at_cmd_start = arg->next->data.longint;

  bpstat_do_actions (&stop_bpstat);


  if (display_time)
    {
      long cmd_time = get_run_time () - time_at_cmd_start;

      printf_unfiltered ("Command execution time: %ld.%06ld\n",
    cmd_time / 1000000, cmd_time % 1000000);
    }
  if (display_space)
    {
    }
}
