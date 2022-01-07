
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_event_stats {int stats; } ;
struct kvm_event {struct kvm_event_stats* vcpu; struct kvm_event_stats total; } ;


 int avg_stats (int *) ;
 double rel_stddev_stats (int ,int ) ;
 int stddev_stats (int *) ;

__attribute__((used)) static double kvm_event_rel_stddev(int vcpu_id, struct kvm_event *event)
{
 struct kvm_event_stats *kvm_stats = &event->total;

 if (vcpu_id != -1)
  kvm_stats = &event->vcpu[vcpu_id];

 return rel_stddev_stats(stddev_stats(&kvm_stats->stats),
    avg_stats(&kvm_stats->stats));
}
