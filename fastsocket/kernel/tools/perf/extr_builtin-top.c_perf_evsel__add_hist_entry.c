
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int period; } ;
struct perf_evsel {int hists; } ;
struct hist_entry {int dummy; } ;
struct addr_location {int dummy; } ;


 int PERF_RECORD_SAMPLE ;
 struct hist_entry* __hists__add_entry (int *,struct addr_location*,int *,int ) ;
 int hists__inc_nr_events (int *,int ) ;

__attribute__((used)) static struct hist_entry *perf_evsel__add_hist_entry(struct perf_evsel *evsel,
           struct addr_location *al,
           struct perf_sample *sample)
{
 struct hist_entry *he;

 he = __hists__add_entry(&evsel->hists, al, ((void*)0), sample->period);
 if (he == ((void*)0))
  return ((void*)0);

 hists__inc_nr_events(&evsel->hists, PERF_RECORD_SAMPLE);
 return he;
}
