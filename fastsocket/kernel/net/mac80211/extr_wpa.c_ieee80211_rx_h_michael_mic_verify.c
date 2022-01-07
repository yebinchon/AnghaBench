
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_rx_data {size_t security_idx; TYPE_6__* key; TYPE_7__* sdata; int tkip_iv16; int tkip_iv32; struct sk_buff* skb; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int ieee80211_rx_result ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ vif; } ;
struct TYPE_12__ {scalar_t__ cipher; int keyidx; int * key; } ;
struct TYPE_10__ {int mic_failures; TYPE_2__* rx; } ;
struct TYPE_11__ {TYPE_3__ tkip; } ;
struct TYPE_13__ {TYPE_5__ conf; TYPE_4__ u; } ;
struct TYPE_9__ {int iv16; int iv32; } ;


 int GFP_ATOMIC ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int MICHAEL_MIC_LEN ;
 scalar_t__ NL80211_IFTYPE_AP ;
 size_t NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY ;
 int RX_CONTINUE ;
 int RX_DROP_UNUSABLE ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 unsigned int ieee80211_hdrlen (int ) ;
 int ieee80211_is_data_present (int ) ;
 int mac80211_ev_michael_mic_failure (TYPE_7__*,int,void*,int *,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int michael_mic (int *,struct ieee80211_hdr*,int *,size_t,int *) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;

ieee80211_rx_result
ieee80211_rx_h_michael_mic_verify(struct ieee80211_rx_data *rx)
{
 u8 *data, *key = ((void*)0);
 size_t data_len;
 unsigned int hdrlen;
 u8 mic[MICHAEL_MIC_LEN];
 struct sk_buff *skb = rx->skb;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;





 if (!ieee80211_is_data_present(hdr->frame_control))
  return RX_CONTINUE;







 if (status->flag & (RX_FLAG_MMIC_STRIPPED | RX_FLAG_IV_STRIPPED)) {
  if (status->flag & RX_FLAG_MMIC_ERROR)
   goto mic_fail_no_key;

  if (!(status->flag & RX_FLAG_IV_STRIPPED) && rx->key &&
      rx->key->conf.cipher == WLAN_CIPHER_SUITE_TKIP)
   goto update_iv;

  return RX_CONTINUE;
 }






 if (!rx->key || rx->key->conf.cipher != WLAN_CIPHER_SUITE_TKIP ||
     !(status->flag & RX_FLAG_DECRYPTED))
  return RX_CONTINUE;

 if (rx->sdata->vif.type == NL80211_IFTYPE_AP && rx->key->conf.keyidx) {






  return RX_DROP_UNUSABLE;
 }

 if (status->flag & RX_FLAG_MMIC_ERROR)
  goto mic_fail;

 hdrlen = ieee80211_hdrlen(hdr->frame_control);
 if (skb->len < hdrlen + MICHAEL_MIC_LEN)
  return RX_DROP_UNUSABLE;

 if (skb_linearize(rx->skb))
  return RX_DROP_UNUSABLE;
 hdr = (void *)skb->data;

 data = skb->data + hdrlen;
 data_len = skb->len - hdrlen - MICHAEL_MIC_LEN;
 key = &rx->key->conf.key[NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY];
 michael_mic(key, hdr, data, data_len, mic);
 if (memcmp(mic, data + data_len, MICHAEL_MIC_LEN) != 0)
  goto mic_fail;


 skb_trim(skb, skb->len - MICHAEL_MIC_LEN);

update_iv:

 rx->key->u.tkip.rx[rx->security_idx].iv32 = rx->tkip_iv32;
 rx->key->u.tkip.rx[rx->security_idx].iv16 = rx->tkip_iv16;

 return RX_CONTINUE;

mic_fail:
 rx->key->u.tkip.mic_failures++;

mic_fail_no_key:





 mac80211_ev_michael_mic_failure(rx->sdata,
     rx->key ? rx->key->conf.keyidx : -1,
     (void *) skb->data, ((void*)0), GFP_ATOMIC);
 return RX_DROP_UNUSABLE;
}
