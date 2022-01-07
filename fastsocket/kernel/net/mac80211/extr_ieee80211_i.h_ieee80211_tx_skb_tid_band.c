
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int __ieee80211_tx_skb_tid_band (struct ieee80211_sub_if_data*,struct sk_buff*,int,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void
ieee80211_tx_skb_tid_band(struct ieee80211_sub_if_data *sdata,
     struct sk_buff *skb, int tid,
     enum ieee80211_band band)
{
 rcu_read_lock();
 __ieee80211_tx_skb_tid_band(sdata, skb, tid, band);
 rcu_read_unlock();
}
