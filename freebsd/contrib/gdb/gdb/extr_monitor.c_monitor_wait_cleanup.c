
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 scalar_t__ in_monitor_wait ;
 int ofunc ;
 int signal (int ,int ) ;
 int timeout ;

__attribute__((used)) static void
monitor_wait_cleanup (void *old_timeout)
{
  timeout = *(int *) old_timeout;
  signal (SIGINT, ofunc);
  in_monitor_wait = 0;
}
