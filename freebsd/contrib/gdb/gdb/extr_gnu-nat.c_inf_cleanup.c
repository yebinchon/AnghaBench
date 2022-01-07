
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int nomsg; scalar_t__ event_port; scalar_t__ pending_execs; scalar_t__ no_wait; scalar_t__ traced; scalar_t__ stopped; scalar_t__ running; scalar_t__ pid; } ;


 scalar_t__ MACH_PORT_NULL ;
 int inf_clear_wait (struct inf*) ;
 int inf_debug (struct inf*,char*) ;
 int inf_set_pid (struct inf*,int) ;
 int mach_port_destroy (int ,scalar_t__) ;
 int mach_task_self () ;

void
inf_cleanup (struct inf *inf)
{
  inf_debug (inf, "cleanup");

  inf_clear_wait (inf);

  inf_set_pid (inf, -1);
  inf->pid = 0;
  inf->running = 0;
  inf->stopped = 0;
  inf->nomsg = 1;
  inf->traced = 0;
  inf->no_wait = 0;
  inf->pending_execs = 0;

  if (inf->event_port)
    {
      mach_port_destroy (mach_task_self (), inf->event_port);
      inf->event_port = MACH_PORT_NULL;
    }
}
