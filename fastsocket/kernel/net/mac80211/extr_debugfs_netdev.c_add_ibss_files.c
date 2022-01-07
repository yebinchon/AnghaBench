
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int DEBUGFS_ADD_MODE (int ,int) ;
 int tsf ;

__attribute__((used)) static void add_ibss_files(struct ieee80211_sub_if_data *sdata)
{
 DEBUGFS_ADD_MODE(tsf, 0600);
}
