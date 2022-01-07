
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int GFP_ATOMIC ;
 int NL80211_CMD_UNPROT_DISASSOCIATE ;
 int nl80211_send_mlme_event (struct cfg80211_registered_device*,struct net_device*,int const*,size_t,int ,int ) ;
 int trace_cfg80211_send_unprot_disassoc (struct net_device*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_send_unprot_disassoc(struct net_device *dev, const u8 *buf,
       size_t len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 trace_cfg80211_send_unprot_disassoc(dev);
 nl80211_send_mlme_event(rdev, dev, buf, len,
    NL80211_CMD_UNPROT_DISASSOCIATE, GFP_ATOMIC);
}
