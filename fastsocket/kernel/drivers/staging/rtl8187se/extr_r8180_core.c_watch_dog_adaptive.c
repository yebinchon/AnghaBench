
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct r8180_priv {TYPE_2__ watch_dog_timer; TYPE_1__* ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int GPIOChangeRFWorkItem; int wq; int hw_dig_wq; int tx_pw_wq; } ;


 int CheckDig (struct net_device*) ;
 scalar_t__ CheckHighPower (struct net_device*) ;
 scalar_t__ CheckTxPwrTracking (struct net_device*) ;
 int DMESG (char*) ;
 int IEEE80211_WATCH_DOG_TIME ;
 scalar_t__ MSECS (int ) ;
 int TxPwrTracking87SE (struct net_device*) ;
 int add_timer (TYPE_2__*) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ jiffies ;
 int queue_work (int ,void*) ;
 int rtl8180_watch_dog (struct net_device*) ;

void watch_dog_adaptive(unsigned long data)
{
 struct r8180_priv* priv = ieee80211_priv((struct net_device *)data);

 if (!priv->up) {
  DMESG("<----watch_dog_adaptive():driver is not up!\n");
  return;
 }
    rtl8180_watch_dog((struct net_device *)data);

 queue_work(priv->ieee80211->wq, (void *)&priv->ieee80211->GPIOChangeRFWorkItem);

    priv->watch_dog_timer.expires = jiffies + MSECS(IEEE80211_WATCH_DOG_TIME);
 add_timer(&priv->watch_dog_timer);
}
