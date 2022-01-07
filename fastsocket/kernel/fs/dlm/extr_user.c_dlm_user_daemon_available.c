
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int dlm_monitor_opened ;
 scalar_t__ dlm_monitor_unused ;
 int dlm_our_nodeid () ;

int dlm_user_daemon_available(void)
{



 if (!dlm_our_nodeid())
  return 0;







 if (dlm_monitor_unused)
  return 1;

 return atomic_read(&dlm_monitor_opened) ? 1 : 0;
}
