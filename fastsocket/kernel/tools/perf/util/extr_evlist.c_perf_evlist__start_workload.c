
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cork_fd; } ;
struct perf_evlist {TYPE_1__ workload; } ;


 int close (scalar_t__) ;

int perf_evlist__start_workload(struct perf_evlist *evlist)
{
 if (evlist->workload.cork_fd > 0) {



  return close(evlist->workload.cork_fd);
 }

 return 0;
}
