
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct r8180_priv {scalar_t__ ForcedDataRate; TYPE_2__ rateadapter_timer; int RateAdaptivePeriod; TYPE_1__* ieee80211; int up; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ iw_mode; scalar_t__ state; int rate_adapter_wq; int wq; } ;


 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ MSECS (int ) ;
 int add_timer (TYPE_2__*) ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ jiffies ;
 int queue_work (int ,void*) ;

void timer_rate_adaptive(unsigned long data)
{
 struct r8180_priv* priv = ieee80211_priv((struct net_device *)data);

 if(!priv->up)
 {

  return;
 }
 if((priv->ieee80211->iw_mode != IW_MODE_MASTER)
   && (priv->ieee80211->state == IEEE80211_LINKED) &&
   (priv->ForcedDataRate == 0) )
 {

  queue_work(priv->ieee80211->wq, (void *)&priv->ieee80211->rate_adapter_wq);

 }
 priv->rateadapter_timer.expires = jiffies + MSECS(priv->RateAdaptivePeriod);
 add_timer(&priv->rateadapter_timer);

}
