
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_kvm_stat {int * kvm_events_cache; } ;


 unsigned int EVENTS_CACHE_SIZE ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void init_kvm_event_record(struct perf_kvm_stat *kvm)
{
 unsigned int i;

 for (i = 0; i < EVENTS_CACHE_SIZE; i++)
  INIT_LIST_HEAD(&kvm->kvm_events_cache[i]);
}
