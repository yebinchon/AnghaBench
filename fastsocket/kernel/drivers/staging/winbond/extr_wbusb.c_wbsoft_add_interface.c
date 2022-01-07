
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wbsoft_priv {int sHwData; } ;
struct ieee80211_if_init_conf {TYPE_2__* vif; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;
struct TYPE_3__ {int beacon_int; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;


 int hal_set_beacon_period (int *,int ) ;

__attribute__((used)) static int wbsoft_add_interface(struct ieee80211_hw *dev,
    struct ieee80211_if_init_conf *conf)
{
 struct wbsoft_priv *priv = dev->priv;

 hal_set_beacon_period(&priv->sHwData, conf->vif->bss_conf.beacon_int);

 return 0;
}
