
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_event_record {int start_time; struct kvm_event* last_event; } ;
struct perf_kvm_stat {int dummy; } ;
struct kvm_event {int dummy; } ;
struct event_key {scalar_t__ key; } ;


 scalar_t__ INVALID_KEY ;
 struct kvm_event* find_create_kvm_event (struct perf_kvm_stat*,struct event_key*) ;

__attribute__((used)) static bool handle_begin_event(struct perf_kvm_stat *kvm,
          struct vcpu_event_record *vcpu_record,
          struct event_key *key, u64 timestamp)
{
 struct kvm_event *event = ((void*)0);

 if (key->key != INVALID_KEY)
  event = find_create_kvm_event(kvm, key);

 vcpu_record->last_event = event;
 vcpu_record->start_time = timestamp;
 return 1;
}
