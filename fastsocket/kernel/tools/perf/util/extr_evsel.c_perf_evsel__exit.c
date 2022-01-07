
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int id; int sample_id; int fd; int node; } ;


 int assert (int ) ;
 int free (int ) ;
 int list_empty (int *) ;
 int xyarray__delete (int ) ;

void perf_evsel__exit(struct perf_evsel *evsel)
{
 assert(list_empty(&evsel->node));
 xyarray__delete(evsel->fd);
 xyarray__delete(evsel->sample_id);
 free(evsel->id);
}
