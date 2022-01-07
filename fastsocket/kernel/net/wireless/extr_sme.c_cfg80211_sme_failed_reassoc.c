
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* conn; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct TYPE_2__ {int prev_bssid_valid; int state; } ;


 int CFG80211_CONN_ASSOCIATE_NEXT ;
 scalar_t__ WARN_ON (int) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

bool cfg80211_sme_failed_reassoc(struct wireless_dev *wdev)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 if (WARN_ON(!wdev->conn))
  return 0;

 if (!wdev->conn->prev_bssid_valid)
  return 0;





 wdev->conn->prev_bssid_valid = 0;
 wdev->conn->state = CFG80211_CONN_ASSOCIATE_NEXT;
 schedule_work(&rdev->conn_work);

 return 1;
}
