
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; int dev; int priority; scalar_t__ cb; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {int skbs; struct ieee80211_local* local; } ;
struct ieee80211_local {scalar_t__ tx_headroom; } ;


 int EINVAL ;
 int ENOMEM ;
 int FCS_LEN ;
 scalar_t__ IEEE80211_ENCRYPT_HEADROOM ;
 scalar_t__ IEEE80211_ENCRYPT_TAILROOM ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ;
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ;
 int IEEE80211_TX_CTL_MORE_FRAMES ;
 scalar_t__ WARN_ON (int) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int skb_copy_queue_mapping (struct sk_buff*,struct sk_buff*) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int ieee80211_fragment(struct ieee80211_tx_data *tx,
         struct sk_buff *skb, int hdrlen,
         int frag_threshold)
{
 struct ieee80211_local *local = tx->local;
 struct ieee80211_tx_info *info;
 struct sk_buff *tmp;
 int per_fragm = frag_threshold - hdrlen - FCS_LEN;
 int pos = hdrlen + per_fragm;
 int rem = skb->len - hdrlen - per_fragm;

 if (WARN_ON(rem < 0))
  return -EINVAL;



 while (rem) {
  int fraglen = per_fragm;

  if (fraglen > rem)
   fraglen = rem;
  rem -= fraglen;
  tmp = dev_alloc_skb(local->tx_headroom +
        frag_threshold +
        IEEE80211_ENCRYPT_HEADROOM +
        IEEE80211_ENCRYPT_TAILROOM);
  if (!tmp)
   return -ENOMEM;

  __skb_queue_tail(&tx->skbs, tmp);

  skb_reserve(tmp, local->tx_headroom +
     IEEE80211_ENCRYPT_HEADROOM);

  memcpy(tmp->cb, skb->cb, sizeof(tmp->cb));

  info = IEEE80211_SKB_CB(tmp);
  info->flags &= ~(IEEE80211_TX_CTL_CLEAR_PS_FILT |
     IEEE80211_TX_CTL_FIRST_FRAGMENT);

  if (rem)
   info->flags |= IEEE80211_TX_CTL_MORE_FRAMES;

  skb_copy_queue_mapping(tmp, skb);
  tmp->priority = skb->priority;
  tmp->dev = skb->dev;


  memcpy(skb_put(tmp, hdrlen), skb->data, hdrlen);
  memcpy(skb_put(tmp, fraglen), skb->data + pos, fraglen);

  pos += fraglen;
 }


 skb->len = hdrlen + per_fragm;
 return 0;
}
