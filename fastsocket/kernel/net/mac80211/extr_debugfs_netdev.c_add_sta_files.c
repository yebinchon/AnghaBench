
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_MODE (int ,int) ;
 int aid ;
 int ave_beacon ;
 int beacon_timeout ;
 int bssid ;
 int last_beacon ;
 int smps ;
 int tkip_mic_test ;
 int uapsd_max_sp_len ;
 int uapsd_queues ;

__attribute__((used)) static void add_sta_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD(bssid);
 DEBUGFS_ADD(aid);
 DEBUGFS_ADD(last_beacon);
 DEBUGFS_ADD(ave_beacon);
 DEBUGFS_ADD(beacon_timeout);
 DEBUGFS_ADD_MODE(smps, 0600);
 DEBUGFS_ADD_MODE(tkip_mic_test, 0200);
 DEBUGFS_ADD_MODE(uapsd_queues, 0600);
 DEBUGFS_ADD_MODE(uapsd_max_sp_len, 0600);
}
