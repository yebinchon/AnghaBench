
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct cache_head {int flags; int last_refresh; int expiry_time; } ;


 int CACHE_VALID ;
 int seconds_since_boot () ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;

__attribute__((used)) static void cache_fresh_locked(struct cache_head *head, time_t expiry)
{
 head->expiry_time = expiry;
 head->last_refresh = seconds_since_boot();
 smp_wmb();
 set_bit(CACHE_VALID, &head->flags);
}
