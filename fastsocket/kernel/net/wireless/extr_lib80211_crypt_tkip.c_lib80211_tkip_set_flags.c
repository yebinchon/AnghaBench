
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lib80211_tkip_data {unsigned long flags; } ;



__attribute__((used)) static unsigned long lib80211_tkip_set_flags(unsigned long flags, void *priv)
{
 struct lib80211_tkip_data *_priv = priv;
 unsigned long old_flags = _priv->flags;
 _priv->flags = flags;
 return old_flags;
}
