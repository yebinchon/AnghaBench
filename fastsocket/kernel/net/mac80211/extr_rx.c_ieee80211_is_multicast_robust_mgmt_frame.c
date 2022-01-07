
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int addr1; } ;


 int ieee80211_is_robust_mgmt_frame (struct ieee80211_hdr*) ;
 int is_multicast_ether_addr (int ) ;

__attribute__((used)) static int ieee80211_is_multicast_robust_mgmt_frame(struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;

 if (skb->len < 24 || !is_multicast_ether_addr(hdr->addr1))
  return 0;

 return ieee80211_is_robust_mgmt_frame(hdr);
}
