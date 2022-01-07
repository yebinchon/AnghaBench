
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct perf_evlist {int dummy; } ;


 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;
 int perf_evsel__parse_sample (struct perf_evsel*,union perf_event*,struct perf_sample*) ;

int perf_evlist__parse_sample(struct perf_evlist *evlist, union perf_event *event,
         struct perf_sample *sample)
{
 struct perf_evsel *evsel = perf_evlist__first(evlist);
 return perf_evsel__parse_sample(evsel, event, sample);
}
