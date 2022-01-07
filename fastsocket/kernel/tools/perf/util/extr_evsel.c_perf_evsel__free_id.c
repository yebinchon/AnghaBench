
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * id; int * sample_id; } ;


 int free (int *) ;
 int xyarray__delete (int *) ;

void perf_evsel__free_id(struct perf_evsel *evsel)
{
 xyarray__delete(evsel->sample_id);
 evsel->sample_id = ((void*)0);
 free(evsel->id);
 evsel->id = ((void*)0);
}
