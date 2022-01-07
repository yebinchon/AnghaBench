
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_event {int * vcpu; int total; } ;


 int kvm_event_expand (struct kvm_event*,int) ;
 int kvm_update_event_stats (int *,int ) ;

__attribute__((used)) static bool update_kvm_event(struct kvm_event *event, int vcpu_id,
        u64 time_diff)
{
 if (vcpu_id == -1) {
  kvm_update_event_stats(&event->total, time_diff);
  return 1;
 }

 if (!kvm_event_expand(event, vcpu_id))
  return 0;

 kvm_update_event_stats(&event->vcpu[vcpu_id], time_diff);
 return 1;
}
