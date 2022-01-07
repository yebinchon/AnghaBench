
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_4__ {int poll; } ;
struct cfg80211_registered_device {int rfkill; TYPE_2__ rfkill_ops; TYPE_1__* ops; } ;
struct TYPE_3__ {int rfkill_poll; } ;


 int cfg80211_rfkill_poll ;
 int rfkill_resume_polling (int ) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void wiphy_rfkill_start_polling(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 if (!rdev->ops->rfkill_poll)
  return;
 rdev->rfkill_ops.poll = cfg80211_rfkill_poll;
 rfkill_resume_polling(rdev->rfkill);
}
