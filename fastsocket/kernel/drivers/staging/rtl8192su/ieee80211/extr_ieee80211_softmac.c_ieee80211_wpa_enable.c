
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wpa_enabled; int ap_mac_addr; } ;


 int memset (int ,int ,int) ;
 int printk (char*,char*) ;

__attribute__((used)) static int ieee80211_wpa_enable(struct ieee80211_device *ieee, int value)
{


 printk("%s WPA\n",value ? "enabling" : "disabling");
 ieee->wpa_enabled = value;
 memset(ieee->ap_mac_addr, 0, 6);
 return 0;
}
