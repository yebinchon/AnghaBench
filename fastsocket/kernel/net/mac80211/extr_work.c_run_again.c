
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct ieee80211_local {TYPE_1__ work_timer; } ;


 int ASSERT_WORK_MTX (struct ieee80211_local*) ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void run_again(struct ieee80211_local *local,
        unsigned long timeout)
{
 ASSERT_WORK_MTX(local);

 if (!timer_pending(&local->work_timer) ||
     time_before(timeout, local->work_timer.expires))
  mod_timer(&local->work_timer, timeout);
}
