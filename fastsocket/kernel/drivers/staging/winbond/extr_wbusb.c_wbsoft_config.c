
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wbsoft_priv {int sHwData; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;
struct TYPE_3__ {int band; int ChanNo; } ;
typedef TYPE_1__ ChanInfo ;


 int hal_set_accept_beacon (int *,int) ;
 int hal_set_accept_broadcast (int *,int) ;
 int hal_set_accept_multicast (int *,int) ;
 int hal_set_accept_promiscuous (int *,int) ;
 int hal_set_current_channel (int *,TYPE_1__) ;
 int hal_set_radio_mode (int *,int ) ;
 int printk (char*) ;

__attribute__((used)) static int wbsoft_config(struct ieee80211_hw *dev, u32 changed)
{
 struct wbsoft_priv *priv = dev->priv;
 ChanInfo ch;

 printk("wbsoft_config called\n");


 ch.band = 1;
 ch.ChanNo = 1;

 hal_set_current_channel(&priv->sHwData, ch);
 hal_set_accept_broadcast(&priv->sHwData, 1);
 hal_set_accept_promiscuous(&priv->sHwData, 1);
 hal_set_accept_multicast(&priv->sHwData, 1);
 hal_set_accept_beacon(&priv->sHwData, 1);
 hal_set_radio_mode(&priv->sHwData, 0);

 return 0;
}
