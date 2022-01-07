
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int bRegHighPowerMechanism; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {scalar_t__ state; } ;


 scalar_t__ IEEE80211_LINKED_SCANNING ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;

bool CheckHighPower(struct net_device *dev)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 struct ieee80211_device *ieee = priv->ieee80211;

 if(!priv->bRegHighPowerMechanism)
 {
  return 0;
 }

 if(ieee->state == IEEE80211_LINKED_SCANNING)
 {
  return 0;
 }

 return 1;
}
