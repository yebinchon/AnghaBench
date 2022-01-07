
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {scalar_t__ cpu; } ;
struct perf_evsel {int dummy; } ;
struct alloc_stat {short alloc_cpu; int pingpong; int call_site; } ;


 int callsite_cmp ;
 unsigned long perf_evsel__intval (struct perf_evsel*,struct perf_sample*,char*) ;
 int ptr_cmp ;
 int root_alloc_stat ;
 int root_caller_stat ;
 struct alloc_stat* search_alloc_stat (unsigned long,int ,int *,int ) ;

__attribute__((used)) static int perf_evsel__process_free_event(struct perf_evsel *evsel,
       struct perf_sample *sample)
{
 unsigned long ptr = perf_evsel__intval(evsel, sample, "ptr");
 struct alloc_stat *s_alloc, *s_caller;

 s_alloc = search_alloc_stat(ptr, 0, &root_alloc_stat, ptr_cmp);
 if (!s_alloc)
  return 0;

 if ((short)sample->cpu != s_alloc->alloc_cpu) {
  s_alloc->pingpong++;

  s_caller = search_alloc_stat(0, s_alloc->call_site,
          &root_caller_stat, callsite_cmp);
  if (!s_caller)
   return -1;
  s_caller->pingpong++;
 }
 s_alloc->alloc_cpu = -1;

 return 0;
}
