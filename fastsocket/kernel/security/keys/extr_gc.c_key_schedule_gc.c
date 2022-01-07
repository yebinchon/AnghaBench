
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 scalar_t__ HZ ;
 int KEY_GC_REAP_KEYTYPE ;
 TYPE_1__ current_kernel_time () ;
 scalar_t__ jiffies ;
 int kdebug (char*) ;
 int kenter (char*,scalar_t__) ;
 int key_gc_flags ;
 scalar_t__ key_gc_next_run ;
 int key_gc_timer ;
 int key_schedule_gc_work () ;
 int mod_timer (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void key_schedule_gc(time_t gc_at)
{
 unsigned long expires;
 time_t now = current_kernel_time().tv_sec;

 kenter("%ld", gc_at - now);

 if (gc_at <= now || test_bit(KEY_GC_REAP_KEYTYPE, &key_gc_flags)) {
  kdebug("IMMEDIATE");
  key_schedule_gc_work();
 } else if (gc_at < key_gc_next_run) {
  kdebug("DEFERRED");
  key_gc_next_run = gc_at;
  expires = jiffies + (gc_at - now) * HZ;
  mod_timer(&key_gc_timer, expires);
 }
}
