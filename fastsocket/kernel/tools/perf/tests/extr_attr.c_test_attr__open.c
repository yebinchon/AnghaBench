
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int pid_t ;


 int die (char*) ;
 int errno ;
 scalar_t__ store_event (struct perf_event_attr*,int ,int,int,int,unsigned long) ;

void test_attr__open(struct perf_event_attr *attr, pid_t pid, int cpu,
       int fd, int group_fd, unsigned long flags)
{
 int errno_saved = errno;

 if (store_event(attr, pid, cpu, fd, group_fd, flags))
  die("test attr FAILED");

 errno = errno_saved;
}
