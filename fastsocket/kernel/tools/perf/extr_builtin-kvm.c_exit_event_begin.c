
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct event_key {int dummy; } ;


 int exit_event_get_key (struct perf_evsel*,struct perf_sample*,struct event_key*) ;
 scalar_t__ kvm_exit_event (struct perf_evsel*) ;

__attribute__((used)) static bool exit_event_begin(struct perf_evsel *evsel,
        struct perf_sample *sample, struct event_key *key)
{
 if (kvm_exit_event(evsel)) {
  exit_event_get_key(evsel, sample, key);
  return 1;
 }

 return 0;
}
