
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int ps; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; } ;



__attribute__((used)) static int cfg80211_wext_giwpower(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *wrq, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 wrq->disabled = !wdev->ps;

 return 0;
}
