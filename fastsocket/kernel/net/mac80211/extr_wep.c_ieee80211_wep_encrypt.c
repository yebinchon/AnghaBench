
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct sk_buff {int len; int const* data; } ;
struct ieee80211_local {int wep_tx_tfm; } ;


 int WEP_ICV_LEN ;
 int WEP_IV_LEN ;
 int WLAN_KEY_LEN_WEP104 ;
 int const* ieee80211_wep_add_iv (struct ieee80211_local*,struct sk_buff*,int,int) ;
 int ieee80211_wep_encrypt_data (int ,int const*,int,int const*,size_t) ;
 int memcpy (int const*,int const*,int) ;
 int skb_put (struct sk_buff*,int ) ;

int ieee80211_wep_encrypt(struct ieee80211_local *local,
     struct sk_buff *skb,
     const u8 *key, int keylen, int keyidx)
{
 u8 *iv;
 size_t len;
 u8 rc4key[3 + WLAN_KEY_LEN_WEP104];

 iv = ieee80211_wep_add_iv(local, skb, keylen, keyidx);
 if (!iv)
  return -1;

 len = skb->len - (iv + WEP_IV_LEN - skb->data);


 memcpy(rc4key, iv, 3);


 memcpy(rc4key + 3, key, keylen);


 skb_put(skb, WEP_ICV_LEN);

 return ieee80211_wep_encrypt_data(local->wep_tx_tfm, rc4key, keylen + 3,
       iv + WEP_IV_LEN, len);
}
