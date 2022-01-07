
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int crypto_tx_tailroom_needed_cnt; int dec_tailroom_needed_wk; int crypto_tx_tailroom_pending_dec; } ;
struct ieee80211_key {struct ieee80211_sub_if_data* sdata; scalar_t__ local; } ;


 int HZ ;
 int ieee80211_debugfs_key_remove (struct ieee80211_key*) ;
 int ieee80211_key_disable_hw_accel (struct ieee80211_key*) ;
 int ieee80211_key_free_common (struct ieee80211_key*) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void __ieee80211_key_destroy(struct ieee80211_key *key,
        bool delay_tailroom)
{
 if (key->local)
  ieee80211_key_disable_hw_accel(key);

 if (key->local) {
  struct ieee80211_sub_if_data *sdata = key->sdata;

  ieee80211_debugfs_key_remove(key);

  if (delay_tailroom) {

   sdata->crypto_tx_tailroom_pending_dec++;
   schedule_delayed_work(&sdata->dec_tailroom_needed_wk,
           HZ/2);
  } else {
   sdata->crypto_tx_tailroom_needed_cnt--;
  }
 }

 ieee80211_key_free_common(key);
}
