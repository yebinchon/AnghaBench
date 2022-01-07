
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_event_stats {int stats; int time; } ;


 int update_stats (int *,scalar_t__) ;

__attribute__((used)) static void
kvm_update_event_stats(struct kvm_event_stats *kvm_stats, u64 time_diff)
{
 kvm_stats->time += time_diff;
 update_stats(&kvm_stats->stats, time_diff);
}
