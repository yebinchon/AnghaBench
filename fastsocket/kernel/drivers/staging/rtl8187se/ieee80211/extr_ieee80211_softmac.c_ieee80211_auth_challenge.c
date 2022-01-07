
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int tx_auth_rq; } ;
struct ieee80211_device {TYPE_2__ associate_timer; TYPE_1__ softmac_stats; int associate_seq; struct ieee80211_network current_network; } ;


 int HZ ;
 int IEEE80211_DEBUG_MGMT (char*) ;
 int MFIE_TYPE_CHALLENGE ;
 int add_timer (TYPE_2__*) ;
 int del_timer_sync (TYPE_2__*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;
 struct sk_buff* ieee80211_authentication_req (struct ieee80211_network*,struct ieee80211_device*,int) ;
 int ieee80211_encrypt_fragment (struct ieee80211_device*,struct sk_buff*,int) ;
 scalar_t__ jiffies ;
 int kfree (int *) ;
 int memcpy (int *,int *,int) ;
 int * skb_put (struct sk_buff*,int) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct ieee80211_device*) ;
 int timer_pending (TYPE_2__*) ;

void ieee80211_auth_challenge(struct ieee80211_device *ieee, u8 *challenge, int chlen)
{
 u8 *c;
 struct sk_buff *skb;
 struct ieee80211_network *beacon = &ieee->current_network;

 del_timer_sync(&ieee->associate_timer);
 ieee->associate_seq++;
 ieee->softmac_stats.tx_auth_rq++;

 skb = ieee80211_authentication_req(beacon, ieee, chlen+2);
 if (!skb)
  ieee80211_associate_abort(ieee);
 else{
  c = skb_put(skb, chlen+2);
  *(c++) = MFIE_TYPE_CHALLENGE;
  *(c++) = chlen;
  memcpy(c, challenge, chlen);

  IEEE80211_DEBUG_MGMT("Sending authentication challenge response\n");

  ieee80211_encrypt_fragment(ieee, skb, sizeof(struct ieee80211_hdr_3addr ));

  softmac_mgmt_xmit(skb, ieee);
  if (!timer_pending(&ieee->associate_timer)){

  ieee->associate_timer.expires = jiffies + (HZ / 2);
  add_timer(&ieee->associate_timer);
  }
  dev_kfree_skb_any(skb);
 }
 kfree(challenge);
}
