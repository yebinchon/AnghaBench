
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct perf_evsel {int name; } ;
struct event_key {int dummy; } ;


 scalar_t__ KVM_TRACE_MMIO_WRITE ;
 scalar_t__ kvm_exit_event (struct perf_evsel*) ;
 int mmio_event_get_key (struct perf_evsel*,struct perf_sample*,struct event_key*) ;
 scalar_t__ perf_evsel__intval (struct perf_evsel*,struct perf_sample*,char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool mmio_event_begin(struct perf_evsel *evsel,
        struct perf_sample *sample, struct event_key *key)
{

 if (kvm_exit_event(evsel))
  return 1;


 if (!strcmp(evsel->name, "kvm:kvm_mmio") &&
     perf_evsel__intval(evsel, sample, "type") == KVM_TRACE_MMIO_WRITE) {
  mmio_event_get_key(evsel, sample, key);
  return 1;
 }

 return 0;
}
