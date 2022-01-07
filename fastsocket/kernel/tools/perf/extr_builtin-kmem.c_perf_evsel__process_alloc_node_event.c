
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {size_t cpu; } ;
struct perf_evsel {int dummy; } ;


 int* cpunode_map ;
 int nr_cross_allocs ;
 int perf_evsel__intval (struct perf_evsel*,struct perf_sample*,char*) ;
 int perf_evsel__process_alloc_event (struct perf_evsel*,struct perf_sample*) ;

__attribute__((used)) static int perf_evsel__process_alloc_node_event(struct perf_evsel *evsel,
      struct perf_sample *sample)
{
 int ret = perf_evsel__process_alloc_event(evsel, sample);

 if (!ret) {
  int node1 = cpunode_map[sample->cpu],
      node2 = perf_evsel__intval(evsel, sample, "node");

  if (node1 != node2)
   nr_cross_allocs++;
 }

 return ret;
}
