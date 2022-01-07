
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
typedef int gfp_t ;


 int NL80211_CMD_UNEXPECTED_4ADDR_FRAME ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 scalar_t__ WARN_ON (int) ;
 int __nl80211_unexpected_frame (struct net_device*,int ,int const*,int ) ;
 int trace_cfg80211_return_bool (int) ;
 int trace_cfg80211_rx_unexpected_4addr_frame (struct net_device*,int const*) ;

bool cfg80211_rx_unexpected_4addr_frame(struct net_device *dev,
     const u8 *addr, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 bool ret;

 trace_cfg80211_rx_unexpected_4addr_frame(dev, addr);

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_AP &&
      wdev->iftype != NL80211_IFTYPE_P2P_GO &&
      wdev->iftype != NL80211_IFTYPE_AP_VLAN)) {
  trace_cfg80211_return_bool(0);
  return 0;
 }
 ret = __nl80211_unexpected_frame(dev,
      NL80211_CMD_UNEXPECTED_4ADDR_FRAME,
      addr, gfp);
 trace_cfg80211_return_bool(ret);
 return ret;
}
