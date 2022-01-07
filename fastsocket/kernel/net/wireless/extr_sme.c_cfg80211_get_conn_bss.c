
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {TYPE_2__* conn; int wiphy; } ;
struct cfg80211_registered_device {int conn_work; } ;
struct cfg80211_bss {int channel; int bssid; } ;
struct TYPE_3__ {int channel; int bssid; int ssid_len; int ssid; scalar_t__ privacy; } ;
struct TYPE_4__ {int state; TYPE_1__ params; int bssid; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CFG80211_CONN_AUTHENTICATE_NEXT ;
 int ETH_ALEN ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_PRIVACY ;
 struct cfg80211_bss* cfg80211_get_bss (int ,int ,int ,int ,int ,int,int) ;
 int memcpy (int ,int ,int ) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static struct cfg80211_bss *cfg80211_get_conn_bss(struct wireless_dev *wdev)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_bss *bss;
 u16 capa = WLAN_CAPABILITY_ESS;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->conn->params.privacy)
  capa |= WLAN_CAPABILITY_PRIVACY;

 bss = cfg80211_get_bss(wdev->wiphy, wdev->conn->params.channel,
          wdev->conn->params.bssid,
          wdev->conn->params.ssid,
          wdev->conn->params.ssid_len,
          WLAN_CAPABILITY_ESS | WLAN_CAPABILITY_PRIVACY,
          capa);
 if (!bss)
  return ((void*)0);

 memcpy(wdev->conn->bssid, bss->bssid, ETH_ALEN);
 wdev->conn->params.bssid = wdev->conn->bssid;
 wdev->conn->params.channel = bss->channel;
 wdev->conn->state = CFG80211_CONN_AUTHENTICATE_NEXT;
 schedule_work(&rdev->conn_work);

 return bss;
}
