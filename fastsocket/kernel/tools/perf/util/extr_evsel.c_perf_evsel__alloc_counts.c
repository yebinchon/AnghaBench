
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * counts; } ;
struct perf_counts_values {int dummy; } ;


 int ENOMEM ;
 int * zalloc (int) ;

int perf_evsel__alloc_counts(struct perf_evsel *evsel, int ncpus)
{
 evsel->counts = zalloc((sizeof(*evsel->counts) +
    (ncpus * sizeof(struct perf_counts_values))));
 return evsel->counts != ((void*)0) ? 0 : -ENOMEM;
}
