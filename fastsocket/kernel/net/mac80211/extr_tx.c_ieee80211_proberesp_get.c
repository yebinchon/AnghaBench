
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct probe_resp {int len; int data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_if_ap {int probe_resp; } ;
struct TYPE_4__ {struct ieee80211_if_ap ap; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; TYPE_1__ vif; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 struct probe_resp* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_put (struct sk_buff*,int ) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *ieee80211_proberesp_get(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif)
{
 struct ieee80211_if_ap *ap = ((void*)0);
 struct sk_buff *skb = ((void*)0);
 struct probe_resp *presp = ((void*)0);
 struct ieee80211_hdr *hdr;
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 if (sdata->vif.type != NL80211_IFTYPE_AP)
  return ((void*)0);

 rcu_read_lock();

 ap = &sdata->u.ap;
 presp = rcu_dereference(ap->probe_resp);
 if (!presp)
  goto out;

 skb = dev_alloc_skb(presp->len);
 if (!skb)
  goto out;

 memcpy(skb_put(skb, presp->len), presp->data, presp->len);

 hdr = (struct ieee80211_hdr *) skb->data;
 memset(hdr->addr1, 0, sizeof(hdr->addr1));

out:
 rcu_read_unlock();
 return skb;
}
