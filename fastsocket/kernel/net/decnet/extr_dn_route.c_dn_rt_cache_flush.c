
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long expires; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ del_timer (TYPE_1__*) ;
 unsigned long dn_rt_deadline ;
 int dn_rt_flush_lock ;
 TYPE_1__ dn_rt_flush_timer ;
 long dn_rt_max_delay ;
 long dn_rt_min_delay ;
 int dn_run_flush (int ) ;
 int in_interrupt () ;
 unsigned long jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void dn_rt_cache_flush(int delay)
{
 unsigned long now = jiffies;
 int user_mode = !in_interrupt();

 if (delay < 0)
  delay = dn_rt_min_delay;

 spin_lock_bh(&dn_rt_flush_lock);

 if (del_timer(&dn_rt_flush_timer) && delay > 0 && dn_rt_deadline) {
  long tmo = (long)(dn_rt_deadline - now);

  if (user_mode && tmo < dn_rt_max_delay - dn_rt_min_delay)
   tmo = 0;

  if (delay > tmo)
   delay = tmo;
 }

 if (delay <= 0) {
  spin_unlock_bh(&dn_rt_flush_lock);
  dn_run_flush(0);
  return;
 }

 if (dn_rt_deadline == 0)
  dn_rt_deadline = now + dn_rt_max_delay;

 dn_rt_flush_timer.expires = now + delay;
 add_timer(&dn_rt_flush_timer);
 spin_unlock_bh(&dn_rt_flush_lock);
}
