
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct r8180_priv {int ps_lock; TYPE_1__* ieee80211; int DozePeriodInPast2Sec; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_sleep_wq; int wq; int hw_wakeup_wq; } ;


 int MAX_SLEEP_TIME ;
 int MIN_SLEEP_TIME ;
 scalar_t__ MSECS (int) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ jiffies ;
 scalar_t__ jiffies_to_msecs (scalar_t__) ;
 int printk (char*) ;
 int queue_delayed_work (int ,int *,scalar_t__) ;
 int queue_work (int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rtl8180_hw_sleep(struct net_device *dev, u32 th, u32 tl)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 u32 rb = jiffies;
 unsigned long flags;

 spin_lock_irqsave(&priv->ps_lock,flags);




 tl -= MSECS(4+16+7);




 if(((tl>=rb)&& (tl-rb) <= MSECS(MIN_SLEEP_TIME))
  ||((rb>tl)&& (rb-tl) < MSECS(MIN_SLEEP_TIME))) {
  spin_unlock_irqrestore(&priv->ps_lock,flags);
  printk("too short to sleep\n");
  return;
 }

 {
  u32 tmp = (tl>rb)?(tl-rb):(rb-tl);

  priv->DozePeriodInPast2Sec += jiffies_to_msecs(tmp);

  queue_delayed_work(priv->ieee80211->wq, &priv->ieee80211->hw_wakeup_wq, tmp);
 }




 if(((tl > rb) && ((tl-rb) > MSECS(MAX_SLEEP_TIME)))||
  ((tl < rb) && ((rb-tl) > MSECS(MAX_SLEEP_TIME)))) {
  spin_unlock_irqrestore(&priv->ps_lock,flags);
  return;
 }

 queue_work(priv->ieee80211->wq, (void *)&priv->ieee80211->hw_sleep_wq);
 spin_unlock_irqrestore(&priv->ps_lock,flags);
}
