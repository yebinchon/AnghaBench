
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;


 int ieee80211_do_open (struct wireless_dev*,int) ;

__attribute__((used)) static int ieee80211_start_p2p_device(struct wiphy *wiphy,
          struct wireless_dev *wdev)
{
 return ieee80211_do_open(wdev, 1);
}
