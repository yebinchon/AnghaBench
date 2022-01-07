
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int fd; struct perf_evsel* leader; } ;


 int BUG_ON (int) ;
 int FD (struct perf_evsel*,int,int) ;
 int perf_evsel__is_group_member (struct perf_evsel*) ;

__attribute__((used)) static int get_group_fd(struct perf_evsel *evsel, int cpu, int thread)
{
 struct perf_evsel *leader = evsel->leader;
 int fd;

 if (!perf_evsel__is_group_member(evsel))
  return -1;





 BUG_ON(!leader->fd);

 fd = FD(leader, cpu, thread);
 BUG_ON(fd == -1);

 return fd;
}
