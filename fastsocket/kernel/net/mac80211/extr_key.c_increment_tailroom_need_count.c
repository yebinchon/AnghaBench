
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int crypto_tx_tailroom_needed_cnt; } ;


 int synchronize_net () ;

__attribute__((used)) static void increment_tailroom_need_count(struct ieee80211_sub_if_data *sdata)
{
 if (!sdata->crypto_tx_tailroom_needed_cnt++) {




  synchronize_net();
 }
}
