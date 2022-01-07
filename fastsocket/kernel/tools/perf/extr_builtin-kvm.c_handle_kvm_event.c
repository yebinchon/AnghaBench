
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcpu_event_record {scalar_t__ vcpu_id; } ;
struct thread {int dummy; } ;
struct perf_sample {int time; } ;
struct perf_kvm_stat {int trace_vcpu; TYPE_1__* events_ops; } ;
struct perf_evsel {int dummy; } ;
struct event_key {int key; } ;
struct TYPE_2__ {scalar_t__ (* is_end_event ) (struct perf_evsel*,struct perf_sample*,struct event_key*) ;scalar_t__ (* is_begin_event ) (struct perf_evsel*,struct perf_sample*,struct event_key*) ;} ;


 int INVALID_KEY ;
 int handle_begin_event (struct perf_kvm_stat*,struct vcpu_event_record*,struct event_key*,int ) ;
 int handle_end_event (struct perf_kvm_stat*,struct vcpu_event_record*,struct event_key*,int ) ;
 struct vcpu_event_record* per_vcpu_record (struct thread*,struct perf_evsel*,struct perf_sample*) ;
 scalar_t__ stub1 (struct perf_evsel*,struct perf_sample*,struct event_key*) ;
 scalar_t__ stub2 (struct perf_evsel*,struct perf_sample*,struct event_key*) ;

__attribute__((used)) static bool handle_kvm_event(struct perf_kvm_stat *kvm,
        struct thread *thread,
        struct perf_evsel *evsel,
        struct perf_sample *sample)
{
 struct vcpu_event_record *vcpu_record;
 struct event_key key = {.key = INVALID_KEY};

 vcpu_record = per_vcpu_record(thread, evsel, sample);
 if (!vcpu_record)
  return 1;


 if ((kvm->trace_vcpu != -1) &&
     (kvm->trace_vcpu != vcpu_record->vcpu_id))
  return 1;

 if (kvm->events_ops->is_begin_event(evsel, sample, &key))
  return handle_begin_event(kvm, vcpu_record, &key, sample->time);

 if (kvm->events_ops->is_end_event(evsel, sample, &key))
  return handle_end_event(kvm, vcpu_record, &key, sample->time);

 return 1;
}
