
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int watch_dog_timer; int watch_dog_wq; int priv_wq; } ;
struct net_device {int dummy; } ;


 int IEEE80211_WATCH_DOG_TIME ;
 scalar_t__ MSECS (int ) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;

void watch_dog_timer_callback(unsigned long data)
{
 struct r8192_priv *priv = ieee80211_priv((struct net_device *) data);

 queue_delayed_work(priv->priv_wq,&priv->watch_dog_wq, 0);
 mod_timer(&priv->watch_dog_timer, jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
}
