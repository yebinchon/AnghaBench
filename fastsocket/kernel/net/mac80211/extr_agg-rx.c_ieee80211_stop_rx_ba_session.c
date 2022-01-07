
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int work; int tid_rx_stop_requested; } ;
struct sta_info {TYPE_2__ ampdu_mlme; TYPE_1__* local; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_3__ {int hw; } ;


 int BIT (int) ;
 int IEEE80211_NUM_TIDS ;
 int ieee80211_queue_work (int *,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_bit (int,int ) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int const*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_stop_rx_ba_session(struct ieee80211_vif *vif, u16 ba_rx_bitmap,
      const u8 *addr)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct sta_info *sta;
 int i;

 rcu_read_lock();
 sta = sta_info_get_bss(sdata, addr);
 if (!sta) {
  rcu_read_unlock();
  return;
 }

 for (i = 0; i < IEEE80211_NUM_TIDS; i++)
  if (ba_rx_bitmap & BIT(i))
   set_bit(i, sta->ampdu_mlme.tid_rx_stop_requested);

 ieee80211_queue_work(&sta->local->hw, &sta->ampdu_mlme.work);
 rcu_read_unlock();
}
