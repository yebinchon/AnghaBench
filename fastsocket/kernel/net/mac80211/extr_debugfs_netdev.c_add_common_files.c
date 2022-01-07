
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int DEBUGFS_ADD (int ) ;
 int drop_unencrypted ;
 int hw_queues ;
 int rc_rateidx_mask_2ghz ;
 int rc_rateidx_mask_5ghz ;
 int rc_rateidx_mcs_mask_2ghz ;
 int rc_rateidx_mcs_mask_5ghz ;

__attribute__((used)) static void add_common_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD(drop_unencrypted);
 DEBUGFS_ADD(rc_rateidx_mask_2ghz);
 DEBUGFS_ADD(rc_rateidx_mask_5ghz);
 DEBUGFS_ADD(rc_rateidx_mcs_mask_2ghz);
 DEBUGFS_ADD(rc_rateidx_mcs_mask_5ghz);
 DEBUGFS_ADD(hw_queues);
}
