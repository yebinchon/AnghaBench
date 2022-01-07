
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; } ;
struct lib80211_ccmp_data {int key_idx; int * tx_pn; int key; } ;


 scalar_t__ CCMP_HDR_LEN ;
 int CCMP_PN_LEN ;
 int CCMP_TK_LEN ;
 int memcpy (int *,int ,int) ;
 int memmove (int *,int *,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int lib80211_ccmp_hdr(struct sk_buff *skb, int hdr_len,
         u8 *aeskey, int keylen, void *priv)
{
 struct lib80211_ccmp_data *key = priv;
 int i;
 u8 *pos;

 if (skb_headroom(skb) < CCMP_HDR_LEN || skb->len < hdr_len)
  return -1;

 if (aeskey != ((void*)0) && keylen >= CCMP_TK_LEN)
  memcpy(aeskey, key->key, CCMP_TK_LEN);

 pos = skb_push(skb, CCMP_HDR_LEN);
 memmove(pos, pos + CCMP_HDR_LEN, hdr_len);
 pos += hdr_len;

 i = CCMP_PN_LEN - 1;
 while (i >= 0) {
  key->tx_pn[i]++;
  if (key->tx_pn[i] != 0)
   break;
  i--;
 }

 *pos++ = key->tx_pn[5];
 *pos++ = key->tx_pn[4];
 *pos++ = 0;
 *pos++ = (key->key_idx << 6) | (1 << 5) ;
 *pos++ = key->tx_pn[3];
 *pos++ = key->tx_pn[2];
 *pos++ = key->tx_pn[1];
 *pos++ = key->tx_pn[0];

 return CCMP_HDR_LEN;
}
