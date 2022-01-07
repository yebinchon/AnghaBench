
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;


 unsigned int ieee80211_hdrlen (int ) ;
 scalar_t__ unlikely (int) ;

unsigned int ieee80211_get_hdrlen_from_skb(const struct sk_buff *skb)
{
 const struct ieee80211_hdr *hdr =
   (const struct ieee80211_hdr *)skb->data;
 unsigned int hdrlen;

 if (unlikely(skb->len < 10))
  return 0;
 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 if (unlikely(hdrlen > skb->len))
  return 0;
 return hdrlen;
}
