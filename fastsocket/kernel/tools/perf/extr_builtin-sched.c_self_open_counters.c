
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int config; int type; } ;
typedef int attr ;


 int PERF_COUNT_SW_TASK_CLOCK ;
 int PERF_TYPE_SOFTWARE ;
 int errno ;
 int memset (struct perf_event_attr*,int ,int) ;
 int pr_err (char*,int,int ) ;
 int strerror (int ) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static int self_open_counters(void)
{
 struct perf_event_attr attr;
 int fd;

 memset(&attr, 0, sizeof(attr));

 attr.type = PERF_TYPE_SOFTWARE;
 attr.config = PERF_COUNT_SW_TASK_CLOCK;

 fd = sys_perf_event_open(&attr, 0, -1, -1, 0);

 if (fd < 0)
  pr_err("Error: sys_perf_event_open() syscall returned "
         "with %d (%s)\n", fd, strerror(errno));
 return fd;
}
