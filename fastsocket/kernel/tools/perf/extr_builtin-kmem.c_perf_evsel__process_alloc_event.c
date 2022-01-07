
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int cpu; } ;
struct perf_evsel {int dummy; } ;


 scalar_t__ insert_alloc_stat (unsigned long,unsigned long,int,int,int ) ;
 scalar_t__ insert_caller_stat (unsigned long,int,int) ;
 int nr_allocs ;
 void* perf_evsel__intval (struct perf_evsel*,struct perf_sample*,char*) ;
 int total_allocated ;
 int total_requested ;

__attribute__((used)) static int perf_evsel__process_alloc_event(struct perf_evsel *evsel,
        struct perf_sample *sample)
{
 unsigned long ptr = perf_evsel__intval(evsel, sample, "ptr"),
        call_site = perf_evsel__intval(evsel, sample, "call_site");
 int bytes_req = perf_evsel__intval(evsel, sample, "bytes_req"),
     bytes_alloc = perf_evsel__intval(evsel, sample, "bytes_alloc");

 if (insert_alloc_stat(call_site, ptr, bytes_req, bytes_alloc, sample->cpu) ||
     insert_caller_stat(call_site, bytes_req, bytes_alloc))
  return -1;

 total_requested += bytes_req;
 total_allocated += bytes_alloc;

 nr_allocs++;
 return 0;
}
