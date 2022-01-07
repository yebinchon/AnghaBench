
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
typedef int u16 ;
struct sta_info {int dummy; } ;
struct sk_buff {int len; scalar_t__ priority; int * data; } ;
struct TYPE_11__ {int * bssid; } ;
struct TYPE_10__ {int * remote_addr; } ;
struct TYPE_9__ {int sta; } ;
struct TYPE_12__ {TYPE_5__ mgd; TYPE_4__ wds; TYPE_3__ vlan; } ;
struct TYPE_8__ {int type; } ;
struct ieee80211_sub_if_data {TYPE_6__ u; TYPE_2__ vif; struct ieee80211_local* local; } ;
struct TYPE_7__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int IEEE80211_AC_BE ;
 scalar_t__ IEEE80211_NUM_ACS ;






 int WLAN_STA_WME ;
 scalar_t__ cfg80211_classify8021d (struct sk_buff*) ;
 int ieee80211_downgrade_queue (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int is_multicast_ether_addr (int const*) ;
 struct sta_info* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 int test_sta_flag (struct sta_info*,int ) ;

u16 ieee80211_select_queue(struct ieee80211_sub_if_data *sdata,
      struct sk_buff *skb)
{
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta = ((void*)0);
 const u8 *ra = ((void*)0);
 bool qos = 0;

 if (local->hw.queues < IEEE80211_NUM_ACS || skb->len < 6) {
  skb->priority = 0;
  return 0;
 }

 rcu_read_lock();
 switch (sdata->vif.type) {
 case 131:
  sta = rcu_dereference(sdata->u.vlan.sta);
  if (sta) {
   qos = test_sta_flag(sta, WLAN_STA_WME);
   break;
  }
 case 132:
  ra = skb->data;
  break;
 case 128:
  ra = sdata->u.wds.remote_addr;
  break;





 case 129:
  ra = sdata->u.mgd.bssid;
  break;
 case 133:
  ra = skb->data;
  break;
 default:
  break;
 }

 if (!sta && ra && !is_multicast_ether_addr(ra)) {
  sta = sta_info_get(sdata, ra);
  if (sta)
   qos = test_sta_flag(sta, WLAN_STA_WME);
 }
 rcu_read_unlock();

 if (!qos) {
  skb->priority = 0;
  return IEEE80211_AC_BE;
 }



 skb->priority = cfg80211_classify8021d(skb);

 return ieee80211_downgrade_queue(sdata, skb);
}
