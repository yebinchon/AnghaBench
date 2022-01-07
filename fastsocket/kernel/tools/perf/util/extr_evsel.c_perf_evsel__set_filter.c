
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int FD (struct perf_evsel*,int,int) ;
 int PERF_EVENT_IOC_SET_FILTER ;
 int ioctl (int,int ,char const*) ;

int perf_evsel__set_filter(struct perf_evsel *evsel, int ncpus, int nthreads,
      const char *filter)
{
 int cpu, thread;

 for (cpu = 0; cpu < ncpus; cpu++) {
  for (thread = 0; thread < nthreads; thread++) {
   int fd = FD(evsel, cpu, thread),
       err = ioctl(fd, PERF_EVENT_IOC_SET_FILTER, filter);

   if (err)
    return err;
  }
 }

 return 0;
}
