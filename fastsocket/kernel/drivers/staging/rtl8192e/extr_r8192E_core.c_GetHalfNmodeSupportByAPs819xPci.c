
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {int bHalfWirelessN24GMode; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static bool GetHalfNmodeSupportByAPs819xPci(struct net_device* dev)
{
 bool Reval;
 struct r8192_priv* priv = ieee80211_priv(dev);
 struct ieee80211_device* ieee = priv->ieee80211;

 if(ieee->bHalfWirelessN24GMode == 1)
  Reval = 1;
 else
  Reval = 0;

 return Reval;
}
