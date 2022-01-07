
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vcpu_event_record {int vcpu_id; scalar_t__ start_time; struct kvm_event* last_event; } ;
struct perf_kvm_stat {int trace_vcpu; } ;
struct kvm_event {int dummy; } ;
struct event_key {scalar_t__ key; } ;


 int BUG_ON (int) ;
 scalar_t__ INVALID_KEY ;
 struct kvm_event* find_create_kvm_event (struct perf_kvm_stat*,struct event_key*) ;
 int update_kvm_event (struct kvm_event*,int,scalar_t__) ;

__attribute__((used)) static bool handle_end_event(struct perf_kvm_stat *kvm,
        struct vcpu_event_record *vcpu_record,
        struct event_key *key,
        u64 timestamp)
{
 struct kvm_event *event;
 u64 time_begin, time_diff;
 int vcpu;

 if (kvm->trace_vcpu == -1)
  vcpu = -1;
 else
  vcpu = vcpu_record->vcpu_id;

 event = vcpu_record->last_event;
 time_begin = vcpu_record->start_time;


 if (!time_begin)
  return 1;







 if (!event && key->key == INVALID_KEY)
  return 1;

 if (!event)
  event = find_create_kvm_event(kvm, key);

 if (!event)
  return 0;

 vcpu_record->last_event = ((void*)0);
 vcpu_record->start_time = 0;

 BUG_ON(timestamp < time_begin);

 time_diff = timestamp - time_begin;
 return update_kvm_event(event, vcpu, time_diff);
}
