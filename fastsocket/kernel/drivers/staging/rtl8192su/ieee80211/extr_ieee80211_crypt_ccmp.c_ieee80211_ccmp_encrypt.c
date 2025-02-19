
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ cb; } ;
struct ieee80211_hdr_4addr {int dummy; } ;
struct ieee80211_ccmp_data {int key_idx; int* tx_b0; int* tx_b; int* tx_e; int* tx_s0; int tfm; int * tx_pn; } ;
struct TYPE_2__ {int bHwSec; } ;
typedef TYPE_1__ cb_desc ;


 int AES_BLOCK_LEN ;
 scalar_t__ CCMP_HDR_LEN ;
 int CCMP_MIC_LEN ;
 int CCMP_PN_LEN ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int ccmp_init_blocks (int ,struct ieee80211_hdr_4addr*,int *,int,int*,int*,int*) ;
 int ieee80211_ccmp_aes_encrypt (int ,int*,int*) ;
 int memmove (int*,int*,int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int* skb_push (struct sk_buff*,scalar_t__) ;
 int* skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;
 int xor_block (int*,int*,int) ;

__attribute__((used)) static int ieee80211_ccmp_encrypt(struct sk_buff *skb, int hdr_len, void *priv)
{
 struct ieee80211_ccmp_data *key = priv;
 int data_len, i;
 u8 *pos;
 struct ieee80211_hdr_4addr *hdr;
 cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);

 if (skb_headroom(skb) < CCMP_HDR_LEN ||
     skb_tailroom(skb) < CCMP_MIC_LEN ||
     skb->len < hdr_len)
  return -1;

 data_len = skb->len - hdr_len;
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


 hdr = (struct ieee80211_hdr_4addr *) skb->data;
 if (!tcb_desc->bHwSec)
 {
  int blocks, last, len;
  u8 *mic;
  u8 *b0 = key->tx_b0;
  u8 *b = key->tx_b;
  u8 *e = key->tx_e;
  u8 *s0 = key->tx_s0;


  mic = skb_put(skb, CCMP_MIC_LEN);

  ccmp_init_blocks(key->tfm, hdr, key->tx_pn, data_len, b0, b, s0);

  blocks = (data_len + AES_BLOCK_LEN - 1) / AES_BLOCK_LEN;
  last = data_len % AES_BLOCK_LEN;

  for (i = 1; i <= blocks; i++) {
   len = (i == blocks && last) ? last : AES_BLOCK_LEN;

   xor_block(b, pos, len);
   ieee80211_ccmp_aes_encrypt(key->tfm, b, b);

   b0[14] = (i >> 8) & 0xff;
   b0[15] = i & 0xff;
   ieee80211_ccmp_aes_encrypt(key->tfm, b0, e);
   xor_block(pos, e, len);
   pos += len;
  }

  for (i = 0; i < CCMP_MIC_LEN; i++)
   mic[i] = b[i] ^ s0[i];
 }
 return 0;
}
