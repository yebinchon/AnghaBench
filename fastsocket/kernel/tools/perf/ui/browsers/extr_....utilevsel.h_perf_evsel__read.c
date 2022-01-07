
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int dummy; } ;


 int __perf_evsel__read (struct perf_evsel*,int,int,int) ;

__attribute__((used)) static inline int perf_evsel__read(struct perf_evsel *evsel,
        int ncpus, int nthreads)
{
 return __perf_evsel__read(evsel, ncpus, nthreads, 0);
}
