
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ssid_len; } ;
struct TYPE_7__ {TYPE_2__ ibss; } ;
struct wireless_dev {TYPE_3__ wext; scalar_t__ ssid_len; int sme_state; TYPE_4__* current_bss; int wiphy; int * connect_keys; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_8__ {int pub; } ;
struct TYPE_5__ {scalar_t__ del_key; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CFG80211_SME_IDLE ;
 int cfg80211_put_bss (int ,int *) ;
 int cfg80211_unhold_bss (TYPE_4__*) ;
 int kfree (int *) ;
 int rdev_del_key (struct cfg80211_registered_device*,struct net_device*,int,int,int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static void __cfg80211_clear_ibss(struct net_device *dev, bool nowext)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 int i;

 ASSERT_WDEV_LOCK(wdev);

 kfree(wdev->connect_keys);
 wdev->connect_keys = ((void*)0);





 if (rdev->ops->del_key)
  for (i = 0; i < 6; i++)
   rdev_del_key(rdev, dev, i, 0, ((void*)0));

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
 }

 wdev->current_bss = ((void*)0);
 wdev->sme_state = CFG80211_SME_IDLE;
 wdev->ssid_len = 0;




}
