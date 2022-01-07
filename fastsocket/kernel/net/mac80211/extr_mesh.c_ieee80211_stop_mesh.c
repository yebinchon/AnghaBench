
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bc_buf; } ;
struct ieee80211_if_mesh {int mesh_path_timer; int mesh_path_root_timer; int housekeeping_timer; TYPE_3__ ps; int mtx; int beacon; scalar_t__ mesh_id_len; } ;
struct TYPE_8__ {struct ieee80211_if_mesh mesh; } ;
struct TYPE_5__ {int enable_beacon; } ;
struct TYPE_6__ {TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int work; TYPE_4__ u; int state; TYPE_2__ vif; int dev; struct ieee80211_local* local; } ;
struct ieee80211_local {int iff_allmultis; int fif_other_bss; int total_ps_buffered; } ;
struct beacon_data {int dummy; } ;


 int BSS_CHANGED_BEACON_ENABLED ;
 int SDATA_STATE_OFFCHANNEL_BEACON_STOPPED ;
 int atomic_dec (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 int kfree_rcu (struct beacon_data*,int ) ;
 int lockdep_is_held (int *) ;
 int mesh_path_flush_by_iface (struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int rcu_assign_pointer (int ,int *) ;
 struct beacon_data* rcu_dereference_protected (int ,int ) ;
 int rcu_head ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_purge (int *) ;
 int sta_info_flush (struct ieee80211_sub_if_data*) ;

void ieee80211_stop_mesh(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct beacon_data *bcn;

 netif_carrier_off(sdata->dev);


 ifmsh->mesh_id_len = 0;
 sdata->vif.bss_conf.enable_beacon = 0;
 clear_bit(SDATA_STATE_OFFCHANNEL_BEACON_STOPPED, &sdata->state);
 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BEACON_ENABLED);
 mutex_lock(&ifmsh->mtx);
 bcn = rcu_dereference_protected(ifmsh->beacon,
     lockdep_is_held(&ifmsh->mtx));
 rcu_assign_pointer(ifmsh->beacon, ((void*)0));
 kfree_rcu(bcn, rcu_head);
 mutex_unlock(&ifmsh->mtx);


 sta_info_flush(sdata);
 mesh_path_flush_by_iface(sdata);


 local->total_ps_buffered -= skb_queue_len(&ifmsh->ps.bc_buf);
 skb_queue_purge(&ifmsh->ps.bc_buf);

 del_timer_sync(&sdata->u.mesh.housekeeping_timer);
 del_timer_sync(&sdata->u.mesh.mesh_path_root_timer);
 del_timer_sync(&sdata->u.mesh.mesh_path_timer);







 cancel_work_sync(&sdata->work);

 local->fif_other_bss--;
 atomic_dec(&local->iff_allmultis);
 ieee80211_configure_filter(local);
}
