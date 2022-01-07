
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int dummy; } ;


 int EOPNOTSUPP ;


 int ieee80211_disassociate (struct ieee80211_device*) ;
 int printk (char*,int) ;

__attribute__((used)) static int ieee80211_wpa_mlme(struct ieee80211_device *ieee, int command, int reason)
{

 int ret = 0;

 switch (command) {
 case 129:

  break;

 case 128:
  ieee80211_disassociate(ieee);
  break;

 default:
  printk("Unknown MLME request: %d\n", command);
  ret = -EOPNOTSUPP;
 }

 return ret;
}
