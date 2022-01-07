
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ ENOSYS ;
 int clock_attr ;
 scalar_t__ clock_fd ;
 int die (char*) ;
 scalar_t__ errno ;
 int getpid () ;
 scalar_t__ sys_perf_event_open (int *,int ,int,int,int ) ;

__attribute__((used)) static void init_clock(void)
{
 clock_fd = sys_perf_event_open(&clock_attr, getpid(), -1, -1, 0);

 if (clock_fd < 0 && errno == ENOSYS)
  die("No CONFIG_PERF_EVENTS=y kernel support configured?\n");
 else
  BUG_ON(clock_fd < 0);
}
