
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int add_has_run; int dir; } ;
struct TYPE_6__ {int addr; } ;
struct sta_info {TYPE_2__ debugfs; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_4__ {struct dentry* subdir_stations; } ;
struct ieee80211_sub_if_data {TYPE_1__ debugfs; } ;
struct ieee80211_local {int dummy; } ;
struct dentry {int dummy; } ;
typedef int mac ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_COUNTER (int ,int ) ;
 int ETH_ALEN ;
 int agg_status ;
 int beacon_loss_count ;
 int connected_time ;
 int current_tx_rate ;
 int debugfs_create_dir (int *,struct dentry*) ;
 int dev ;
 int drv_sta_add_debugfs (struct ieee80211_local*,struct ieee80211_sub_if_data*,TYPE_3__*,int ) ;
 int flags ;
 int ht_capa ;
 int inactive_ms ;
 int last_ack_signal ;
 int last_rx_rate ;
 int last_seq_ctrl ;
 int last_signal ;
 int num_duplicates ;
 int num_ps_buf_frames ;
 int rx_bytes ;
 int rx_dropped ;
 int rx_duplicates ;
 int rx_fragments ;
 int rx_packets ;
 int snprintf (int *,int,char*,int ) ;
 int tx_bytes ;
 int tx_filtered ;
 int tx_filtered_count ;
 int tx_fragments ;
 int tx_packets ;
 int tx_retry_count ;
 int tx_retry_failed ;
 int vht_capa ;
 int wep_weak_iv_count ;

void ieee80211_sta_debugfs_add(struct sta_info *sta)
{
 struct ieee80211_local *local = sta->local;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct dentry *stations_dir = sta->sdata->debugfs.subdir_stations;
 u8 mac[3*ETH_ALEN];

 sta->debugfs.add_has_run = 1;

 if (!stations_dir)
  return;

 snprintf(mac, sizeof(mac), "%pM", sta->sta.addr);
 sta->debugfs.dir = debugfs_create_dir(mac, stations_dir);
 if (!sta->debugfs.dir)
  return;

 DEBUGFS_ADD(flags);
 DEBUGFS_ADD(num_ps_buf_frames);
 DEBUGFS_ADD(inactive_ms);
 DEBUGFS_ADD(connected_time);
 DEBUGFS_ADD(last_seq_ctrl);
 DEBUGFS_ADD(agg_status);
 DEBUGFS_ADD(dev);
 DEBUGFS_ADD(last_signal);
 DEBUGFS_ADD(beacon_loss_count);
 DEBUGFS_ADD(ht_capa);
 DEBUGFS_ADD(vht_capa);
 DEBUGFS_ADD(last_ack_signal);
 DEBUGFS_ADD(current_tx_rate);
 DEBUGFS_ADD(last_rx_rate);

 DEBUGFS_ADD_COUNTER(rx_packets, rx_packets);
 DEBUGFS_ADD_COUNTER(tx_packets, tx_packets);
 DEBUGFS_ADD_COUNTER(rx_bytes, rx_bytes);
 DEBUGFS_ADD_COUNTER(tx_bytes, tx_bytes);
 DEBUGFS_ADD_COUNTER(rx_duplicates, num_duplicates);
 DEBUGFS_ADD_COUNTER(rx_fragments, rx_fragments);
 DEBUGFS_ADD_COUNTER(rx_dropped, rx_dropped);
 DEBUGFS_ADD_COUNTER(tx_fragments, tx_fragments);
 DEBUGFS_ADD_COUNTER(tx_filtered, tx_filtered_count);
 DEBUGFS_ADD_COUNTER(tx_retry_failed, tx_retry_failed);
 DEBUGFS_ADD_COUNTER(tx_retry_count, tx_retry_count);
 DEBUGFS_ADD_COUNTER(wep_weak_iv_count, wep_weak_iv_count);

 drv_sta_add_debugfs(local, sdata, &sta->sta, sta->debugfs.dir);
}
