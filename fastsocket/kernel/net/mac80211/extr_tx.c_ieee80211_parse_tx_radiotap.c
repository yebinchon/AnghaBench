
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_radiotap_iterator {int this_arg_index; int* this_arg; scalar_t__ _max_length; } ;
struct ieee80211_radiotap_header {int dummy; } ;


 int ENOENT ;
 scalar_t__ FCS_LEN ;

 int IEEE80211_RADIOTAP_F_FCS ;
 int IEEE80211_RADIOTAP_F_FRAG ;
 int IEEE80211_RADIOTAP_F_TX_NOACK ;
 int IEEE80211_RADIOTAP_F_WEP ;

 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_DONTFRAG ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int get_unaligned_le16 (int*) ;
 int ieee80211_radiotap_iterator_init (struct ieee80211_radiotap_iterator*,struct ieee80211_radiotap_header*,scalar_t__,int *) ;
 int ieee80211_radiotap_iterator_next (struct ieee80211_radiotap_iterator*) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static bool ieee80211_parse_tx_radiotap(struct sk_buff *skb)
{
 struct ieee80211_radiotap_iterator iterator;
 struct ieee80211_radiotap_header *rthdr =
  (struct ieee80211_radiotap_header *) skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 int ret = ieee80211_radiotap_iterator_init(&iterator, rthdr, skb->len,
         ((void*)0));
 u16 txflags;

 info->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT |
         IEEE80211_TX_CTL_DONTFRAG;







 while (!ret) {
  ret = ieee80211_radiotap_iterator_next(&iterator);

  if (ret)
   continue;


  switch (iterator.this_arg_index) {






  case 129:
   if (*iterator.this_arg & IEEE80211_RADIOTAP_F_FCS) {







    if (skb->len < (iterator._max_length + FCS_LEN))
     return 0;

    skb_trim(skb, skb->len - FCS_LEN);
   }
   if (*iterator.this_arg & IEEE80211_RADIOTAP_F_WEP)
    info->flags &= ~IEEE80211_TX_INTFL_DONT_ENCRYPT;
   if (*iterator.this_arg & IEEE80211_RADIOTAP_F_FRAG)
    info->flags &= ~IEEE80211_TX_CTL_DONTFRAG;
   break;

  case 128:
   txflags = get_unaligned_le16(iterator.this_arg);
   if (txflags & IEEE80211_RADIOTAP_F_TX_NOACK)
    info->flags |= IEEE80211_TX_CTL_NO_ACK;
   break;







  default:
   break;
  }
 }

 if (ret != -ENOENT)
  return 0;






 skb_pull(skb, iterator._max_length);

 return 1;
}
