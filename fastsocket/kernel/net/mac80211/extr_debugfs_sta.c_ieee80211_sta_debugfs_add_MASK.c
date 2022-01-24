#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int add_has_run; int /*<<< orphan*/  dir; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct sta_info {TYPE_2__ debugfs; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct TYPE_4__ {struct dentry* subdir_stations; } ;
struct ieee80211_sub_if_data {TYPE_1__ debugfs; } ;
struct ieee80211_local {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  agg_status ; 
 int /*<<< orphan*/  beacon_loss_count ; 
 int /*<<< orphan*/  connected_time ; 
 int /*<<< orphan*/  current_tx_rate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dentry*) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_local*,struct ieee80211_sub_if_data*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  ht_capa ; 
 int /*<<< orphan*/  inactive_ms ; 
 int /*<<< orphan*/  last_ack_signal ; 
 int /*<<< orphan*/  last_rx_rate ; 
 int /*<<< orphan*/  last_seq_ctrl ; 
 int /*<<< orphan*/  last_signal ; 
 int /*<<< orphan*/  num_duplicates ; 
 int /*<<< orphan*/  num_ps_buf_frames ; 
 int /*<<< orphan*/  rx_bytes ; 
 int /*<<< orphan*/  rx_dropped ; 
 int /*<<< orphan*/  rx_duplicates ; 
 int /*<<< orphan*/  rx_fragments ; 
 int /*<<< orphan*/  rx_packets ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_bytes ; 
 int /*<<< orphan*/  tx_filtered ; 
 int /*<<< orphan*/  tx_filtered_count ; 
 int /*<<< orphan*/  tx_fragments ; 
 int /*<<< orphan*/  tx_packets ; 
 int /*<<< orphan*/  tx_retry_count ; 
 int /*<<< orphan*/  tx_retry_failed ; 
 int /*<<< orphan*/  vht_capa ; 
 int /*<<< orphan*/  wep_weak_iv_count ; 

void FUNC5(struct sta_info *sta)
{
	struct ieee80211_local *local = sta->local;
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct dentry *stations_dir = sta->sdata->debugfs.subdir_stations;
	u8 mac[3*ETH_ALEN];

	sta->debugfs.add_has_run = true;

	if (!stations_dir)
		return;

	FUNC4(mac, sizeof(mac), "%pM", sta->sta.addr);

	/*
	 * This might fail due to a race condition:
	 * When mac80211 unlinks a station, the debugfs entries
	 * remain, but it is already possible to link a new
	 * station with the same address which triggers adding
	 * it to debugfs; therefore, if the old station isn't
	 * destroyed quickly enough the old station's debugfs
	 * dir might still be around.
	 */
	sta->debugfs.dir = FUNC2(mac, stations_dir);
	if (!sta->debugfs.dir)
		return;

	FUNC0(flags);
	FUNC0(num_ps_buf_frames);
	FUNC0(inactive_ms);
	FUNC0(connected_time);
	FUNC0(last_seq_ctrl);
	FUNC0(agg_status);
	FUNC0(dev);
	FUNC0(last_signal);
	FUNC0(beacon_loss_count);
	FUNC0(ht_capa);
	FUNC0(vht_capa);
	FUNC0(last_ack_signal);
	FUNC0(current_tx_rate);
	FUNC0(last_rx_rate);

	FUNC1(rx_packets, rx_packets);
	FUNC1(tx_packets, tx_packets);
	FUNC1(rx_bytes, rx_bytes);
	FUNC1(tx_bytes, tx_bytes);
	FUNC1(rx_duplicates, num_duplicates);
	FUNC1(rx_fragments, rx_fragments);
	FUNC1(rx_dropped, rx_dropped);
	FUNC1(tx_fragments, tx_fragments);
	FUNC1(tx_filtered, tx_filtered_count);
	FUNC1(tx_retry_failed, tx_retry_failed);
	FUNC1(tx_retry_count, tx_retry_count);
	FUNC1(wep_weak_iv_count, wep_weak_iv_count);

	FUNC3(local, sdata, &sta->sta, sta->debugfs.dir);
}