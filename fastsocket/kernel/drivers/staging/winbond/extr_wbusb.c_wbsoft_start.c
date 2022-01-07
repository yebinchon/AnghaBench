
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsoft_priv {int enabled; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;



__attribute__((used)) static int wbsoft_start(struct ieee80211_hw *dev)
{
 struct wbsoft_priv *priv = dev->priv;

 priv->enabled = 1;

 return 0;
}
