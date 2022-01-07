
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int* data; } ;
struct TYPE_2__ {int keylen; } ;
struct ieee80211_key {TYPE_1__ conf; } ;
struct ieee80211_hdr {int frame_control; } ;


 unsigned int ieee80211_hdrlen (int ) ;
 int ieee80211_wep_weak_iv (int,int ) ;

__attribute__((used)) static bool ieee80211_wep_is_weak_iv(struct sk_buff *skb,
         struct ieee80211_key *key)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 unsigned int hdrlen;
 u8 *ivpos;
 u32 iv;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 ivpos = skb->data + hdrlen;
 iv = (ivpos[0] << 16) | (ivpos[1] << 8) | ivpos[2];

 return ieee80211_wep_weak_iv(iv, key->conf.keylen);
}
