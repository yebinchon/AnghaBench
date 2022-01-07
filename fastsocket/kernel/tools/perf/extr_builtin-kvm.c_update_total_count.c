
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int trace_vcpu; int total_time; int total_count; } ;
struct kvm_event {int dummy; } ;


 scalar_t__ get_event_count (struct kvm_event*,int) ;
 scalar_t__ get_event_time (struct kvm_event*,int) ;

__attribute__((used)) static void
update_total_count(struct perf_kvm_stat *kvm, struct kvm_event *event)
{
 int vcpu = kvm->trace_vcpu;

 kvm->total_count += get_event_count(event, vcpu);
 kvm->total_time += get_event_time(event, vcpu);
}
