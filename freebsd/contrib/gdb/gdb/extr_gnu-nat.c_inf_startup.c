
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int event_port; } ;
typedef scalar_t__ error_t ;


 int MACH_MSG_TYPE_MAKE_SEND ;
 int MACH_PORT_RIGHT_RECEIVE ;
 int error (char*,int ) ;
 int inf_cleanup (struct inf*) ;
 int inf_debug (struct inf*,char*,int) ;
 int inf_set_pid (struct inf*,int) ;
 scalar_t__ mach_port_allocate (int ,int ,int *) ;
 int mach_port_insert_right (int ,int ,int ,int ) ;
 int mach_task_self () ;
 int safe_strerror (scalar_t__) ;

void
inf_startup (struct inf *inf, int pid)
{
  error_t err;

  inf_debug (inf, "startup: pid = %d", pid);

  inf_cleanup (inf);


  err = mach_port_allocate (mach_task_self (),
       MACH_PORT_RIGHT_RECEIVE, &inf->event_port);
  if (err)
    error ("Error allocating event port: %s", safe_strerror (err));


  mach_port_insert_right (mach_task_self (), inf->event_port,
     inf->event_port, MACH_MSG_TYPE_MAKE_SEND);
  inf_set_pid (inf, pid);
}
