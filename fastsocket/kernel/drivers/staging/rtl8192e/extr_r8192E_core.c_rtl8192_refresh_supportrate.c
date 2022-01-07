
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct ieee80211_device {scalar_t__ mode; int Regdot11HTOperationalRateSet; int RegHTSuppRateSet; } ;


 scalar_t__ WIRELESS_MODE_N_24G ;
 scalar_t__ WIRELESS_MODE_N_5G ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void rtl8192_refresh_supportrate(struct r8192_priv* priv)
{
 struct ieee80211_device* ieee = priv->ieee80211;

 if (ieee->mode == WIRELESS_MODE_N_24G || ieee->mode == WIRELESS_MODE_N_5G)
 {
  memcpy(ieee->Regdot11HTOperationalRateSet, ieee->RegHTSuppRateSet, 16);


 }
 else
  memset(ieee->Regdot11HTOperationalRateSet, 0, 16);
 return;
}
