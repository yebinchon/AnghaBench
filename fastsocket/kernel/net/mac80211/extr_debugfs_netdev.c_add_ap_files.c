
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int DEBUGFS_ADD (int ) ;
 int DEBUGFS_ADD_MODE (int ,int) ;
 int dtim_count ;
 int num_buffered_multicast ;
 int num_mcast_sta ;
 int num_sta_ps ;
 int tkip_mic_test ;

__attribute__((used)) static void add_ap_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD(num_mcast_sta);
 DEBUGFS_ADD(num_sta_ps);
 DEBUGFS_ADD(dtim_count);
 DEBUGFS_ADD(num_buffered_multicast);
 DEBUGFS_ADD_MODE(tkip_mic_test, 0200);
}
