
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; } ;
struct sockaddr {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;


 int EOPNOTSUPP ;



 int cfg80211_ibss_wext_siwap (struct net_device*,struct iw_request_info*,struct sockaddr*,char*) ;
 int cfg80211_mgd_wext_siwap (struct net_device*,struct iw_request_info*,struct sockaddr*,char*) ;
 int cfg80211_wds_wext_siwap (struct net_device*,struct iw_request_info*,struct sockaddr*,char*) ;

__attribute__((used)) static int cfg80211_wext_siwap(struct net_device *dev,
          struct iw_request_info *info,
          struct sockaddr *ap_addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 switch (wdev->iftype) {
 case 130:
  return cfg80211_ibss_wext_siwap(dev, info, ap_addr, extra);
 case 129:
  return cfg80211_mgd_wext_siwap(dev, info, ap_addr, extra);
 case 128:
  return cfg80211_wds_wext_siwap(dev, info, ap_addr, extra);
 default:
  return -EOPNOTSUPP;
 }
}
