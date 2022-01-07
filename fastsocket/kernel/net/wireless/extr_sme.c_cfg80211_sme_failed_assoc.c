
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* conn; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct TYPE_2__ {int state; } ;


 int CFG80211_CONN_DEAUTH_ASSOC_FAIL ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_sme_failed_assoc(struct wireless_dev *wdev)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 wdev->conn->state = CFG80211_CONN_DEAUTH_ASSOC_FAIL;
 schedule_work(&rdev->conn_work);
}
