
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int cb; } ;
typedef int p80211_rxmeta_t ;
struct TYPE_3__ {int * rx; } ;
typedef TYPE_1__ p80211_frmmeta_t ;


 TYPE_1__* P80211SKB_FRMMETA (struct sk_buff*) ;
 int kfree (int *) ;
 int memset (int ,int ,int) ;
 int pr_debug (char*) ;

void p80211skb_rxmeta_detach(struct sk_buff *skb)
{
 p80211_rxmeta_t *rxmeta;
 p80211_frmmeta_t *frmmeta;


 if (skb == ((void*)0)) {
  pr_debug("Called w/ null skb.\n");
  goto exit;
 }
 frmmeta = P80211SKB_FRMMETA(skb);
 if (frmmeta == ((void*)0)) {
  pr_debug("Called w/ bad frmmeta magic.\n");
  goto exit;
 }
 rxmeta = frmmeta->rx;
 if (rxmeta == ((void*)0)) {
  pr_debug("Called w/ bad rxmeta ptr.\n");
  goto exit;
 }


 kfree(rxmeta);


 memset(skb->cb, 0, sizeof(skb->cb));
exit:
 return;
}
