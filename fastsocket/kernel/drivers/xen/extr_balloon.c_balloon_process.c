
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_pages; } ;


 scalar_t__ HZ ;
 int balloon_mutex ;
 TYPE_1__ balloon_stats ;
 int balloon_timer ;
 scalar_t__ current_target () ;
 scalar_t__ decrease_reservation (long) ;
 scalar_t__ increase_reservation (long) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_resched () ;
 int schedule () ;

__attribute__((used)) static void balloon_process(struct work_struct *work)
{
 int need_sleep = 0;
 long credit;

 mutex_lock(&balloon_mutex);

 do {
  credit = current_target() - balloon_stats.current_pages;
  if (credit > 0)
   need_sleep = (increase_reservation(credit) != 0);
  if (credit < 0)
   need_sleep = (decrease_reservation(-credit) != 0);


  if (need_resched())
   schedule();

 } while ((credit != 0) && !need_sleep);


 if (current_target() != balloon_stats.current_pages)
  mod_timer(&balloon_timer, jiffies + HZ);

 mutex_unlock(&balloon_mutex);
}
