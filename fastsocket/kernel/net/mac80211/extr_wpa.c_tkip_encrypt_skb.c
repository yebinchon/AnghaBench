
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct TYPE_11__ {TYPE_4__* hw_key; } ;
struct ieee80211_tx_info {TYPE_5__ control; } ;
struct ieee80211_tx_data {TYPE_6__* local; struct ieee80211_key* key; } ;
struct TYPE_7__ {scalar_t__ iv16; int iv32; } ;
struct TYPE_8__ {int txlock; TYPE_1__ tx; } ;
struct TYPE_9__ {TYPE_2__ tkip; } ;
struct ieee80211_key {TYPE_3__ u; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_12__ {int wep_tx_tfm; } ;
struct TYPE_10__ {int flags; } ;


 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int TKIP_ICV_LEN ;
 scalar_t__ TKIP_IV_LEN ;
 scalar_t__ WARN_ON (int) ;
 unsigned int ieee80211_hdrlen (int ) ;
 int * ieee80211_tkip_add_iv (int *,struct ieee80211_key*) ;
 int ieee80211_tkip_encrypt_data (int ,struct ieee80211_key*,struct sk_buff*,int *,int) ;
 int memmove (int *,int *,unsigned int) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;
 int * skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_set_network_header (struct sk_buff*,scalar_t__) ;
 int skb_tailroom (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int tkip_encrypt_skb(struct ieee80211_tx_data *tx, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_key *key = tx->key;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 unsigned int hdrlen;
 int len, tail;
 u8 *pos;

 if (info->control.hw_key &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV) &&
     !(info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE)) {

  return 0;
 }

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 len = skb->len - hdrlen;

 if (info->control.hw_key)
  tail = 0;
 else
  tail = TKIP_ICV_LEN;

 if (WARN_ON(skb_tailroom(skb) < tail ||
      skb_headroom(skb) < TKIP_IV_LEN))
  return -1;

 pos = skb_push(skb, TKIP_IV_LEN);
 memmove(pos, pos + TKIP_IV_LEN, hdrlen);
 skb_set_network_header(skb, skb_network_offset(skb) + TKIP_IV_LEN);
 pos += hdrlen;


 if (info->control.hw_key &&
     (info->control.hw_key->flags & IEEE80211_KEY_FLAG_PUT_IV_SPACE))
  return 0;


 spin_lock(&key->u.tkip.txlock);
 key->u.tkip.tx.iv16++;
 if (key->u.tkip.tx.iv16 == 0)
  key->u.tkip.tx.iv32++;
 pos = ieee80211_tkip_add_iv(pos, key);
 spin_unlock(&key->u.tkip.txlock);


 if (info->control.hw_key)
  return 0;


 skb_put(skb, TKIP_ICV_LEN);

 return ieee80211_tkip_encrypt_data(tx->local->wep_tx_tfm,
        key, skb, pos, len);
}
