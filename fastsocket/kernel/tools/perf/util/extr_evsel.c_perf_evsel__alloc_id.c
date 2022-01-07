
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sample_id {int dummy; } ;
struct perf_evsel {int * sample_id; int * id; } ;


 int ENOMEM ;
 int xyarray__delete (int *) ;
 int * xyarray__new (int,int,int) ;
 int * zalloc (int) ;

int perf_evsel__alloc_id(struct perf_evsel *evsel, int ncpus, int nthreads)
{
 evsel->sample_id = xyarray__new(ncpus, nthreads, sizeof(struct perf_sample_id));
 if (evsel->sample_id == ((void*)0))
  return -ENOMEM;

 evsel->id = zalloc(ncpus * nthreads * sizeof(u64));
 if (evsel->id == ((void*)0)) {
  xyarray__delete(evsel->sample_id);
  evsel->sample_id = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
