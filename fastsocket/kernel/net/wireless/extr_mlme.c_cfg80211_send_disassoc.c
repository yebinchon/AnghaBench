
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;


 int __cfg80211_send_disassoc (struct net_device*,int const*,size_t) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

void cfg80211_send_disassoc(struct net_device *dev, const u8 *buf, size_t len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 wdev_lock(wdev);
 __cfg80211_send_disassoc(dev, buf, len);
 wdev_unlock(wdev);
}
