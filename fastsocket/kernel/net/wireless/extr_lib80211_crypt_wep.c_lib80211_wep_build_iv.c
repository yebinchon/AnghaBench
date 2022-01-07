
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; } ;
struct lib80211_wep_data {int key_len; int iv; int key_idx; } ;


 int memmove (int*,int*,int) ;
 int skb_headroom (struct sk_buff*) ;
 int* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int lib80211_wep_build_iv(struct sk_buff *skb, int hdr_len,
          u8 *key, int keylen, void *priv)
{
 struct lib80211_wep_data *wep = priv;
 u32 klen;
 u8 *pos;

 if (skb_headroom(skb) < 4 || skb->len < hdr_len)
  return -1;

 pos = skb_push(skb, 4);
 memmove(pos, pos + 4, hdr_len);
 pos += hdr_len;

 klen = 3 + wep->key_len;

 wep->iv++;




 if ((wep->iv & 0xff00) == 0xff00) {
  u8 B = (wep->iv >> 16) & 0xff;
  if (B >= 3 && B < klen)
   wep->iv += 0x0100;
 }


 *pos++ = (wep->iv >> 16) & 0xff;
 *pos++ = (wep->iv >> 8) & 0xff;
 *pos++ = wep->iv & 0xff;
 *pos++ = wep->key_idx << 6;

 return 0;
}
