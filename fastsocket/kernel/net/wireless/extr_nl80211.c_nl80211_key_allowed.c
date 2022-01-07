
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; int sme_state; int current_bss; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CFG80211_SME_CONNECTED ;
 int EINVAL ;
 int ENOLINK ;
__attribute__((used)) static int nl80211_key_allowed(struct wireless_dev *wdev)
{
 ASSERT_WDEV_LOCK(wdev);

 switch (wdev->iftype) {
 case 133:
 case 132:
 case 129:
 case 131:
  break;
 case 134:
  if (!wdev->current_bss)
   return -ENOLINK;
  break;
 case 128:
 case 130:
  if (wdev->sme_state != CFG80211_SME_CONNECTED)
   return -ENOLINK;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
