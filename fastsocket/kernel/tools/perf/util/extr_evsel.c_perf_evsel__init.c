
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_type; } ;
struct perf_evsel {int idx; int sample_size; int hists; int node; struct perf_event_attr attr; } ;


 int INIT_LIST_HEAD (int *) ;
 int __perf_evsel__sample_size (int ) ;
 int hists__init (int *) ;

void perf_evsel__init(struct perf_evsel *evsel,
        struct perf_event_attr *attr, int idx)
{
 evsel->idx = idx;
 evsel->attr = *attr;
 INIT_LIST_HEAD(&evsel->node);
 hists__init(&evsel->hists);
 evsel->sample_size = __perf_evsel__sample_size(attr->sample_type);
}
