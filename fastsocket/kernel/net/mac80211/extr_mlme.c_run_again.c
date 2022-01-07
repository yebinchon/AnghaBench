
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expires; } ;
struct ieee80211_if_managed {TYPE_1__ timer; } ;


 int ASSERT_MGD_MTX (struct ieee80211_if_managed*) ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 scalar_t__ time_before (unsigned long,int ) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void run_again(struct ieee80211_if_managed *ifmgd, unsigned long timeout)
{
 ASSERT_MGD_MTX(ifmgd);

 if (!timer_pending(&ifmgd->timer) ||
     time_before(timeout, ifmgd->timer.expires))
  mod_timer(&ifmgd->timer, timeout);
}
