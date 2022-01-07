
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int name; } ;
struct ieee80211_rx_status {int rx_flags; } ;
struct ieee80211_rx_data {struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_2__ {int wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int dummy; } ;


 int GFP_ATOMIC ;
 int IEEE80211_RX_RA_MATCH ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int ieee80211_invoke_rx_handlers (struct ieee80211_rx_data*) ;
 scalar_t__ net_ratelimit () ;
 int prepare_for_handlers (struct ieee80211_rx_data*,struct ieee80211_hdr*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int wiphy_debug (int ,char*,int ) ;

__attribute__((used)) static bool ieee80211_prepare_and_rx_handle(struct ieee80211_rx_data *rx,
         struct sk_buff *skb, bool consume)
{
 struct ieee80211_local *local = rx->local;
 struct ieee80211_sub_if_data *sdata = rx->sdata;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *hdr = (void *)skb->data;
 int prepares;

 rx->skb = skb;
 status->rx_flags |= IEEE80211_RX_RA_MATCH;
 prepares = prepare_for_handlers(rx, hdr);

 if (!prepares)
  return 0;

 if (!consume) {
  skb = skb_copy(skb, GFP_ATOMIC);
  if (!skb) {
   if (net_ratelimit())
    wiphy_debug(local->hw.wiphy,
     "failed to copy skb for %s\n",
     sdata->name);
   return 1;
  }

  rx->skb = skb;
 }

 ieee80211_invoke_rx_handlers(rx);
 return 1;
}
