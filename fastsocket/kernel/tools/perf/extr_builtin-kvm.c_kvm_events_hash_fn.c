
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EVENTS_CACHE_SIZE ;

__attribute__((used)) static int kvm_events_hash_fn(u64 key)
{
 return key & (EVENTS_CACHE_SIZE - 1);
}
