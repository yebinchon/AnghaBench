
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tx ) (int *,struct ieee80211_tx_control*,struct sk_buff*) ;} ;


 int stub1 (int *,struct ieee80211_tx_control*,struct sk_buff*) ;

__attribute__((used)) static inline void drv_tx(struct ieee80211_local *local,
     struct ieee80211_tx_control *control,
     struct sk_buff *skb)
{
 local->ops->tx(&local->hw, control, skb);
}
