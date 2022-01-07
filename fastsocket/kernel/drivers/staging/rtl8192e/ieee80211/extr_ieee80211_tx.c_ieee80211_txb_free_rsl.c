
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_txb {size_t nr_frags; scalar_t__* fragments; } ;


 int dev_kfree_skb_any (scalar_t__) ;
 size_t i ;
 int kfree (struct ieee80211_txb*) ;
 scalar_t__ unlikely (int) ;

void ieee80211_txb_free(struct ieee80211_txb *txb) {

 if (unlikely(!txb))
  return;





 kfree(txb);
}
