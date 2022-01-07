
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int state; } ;


 int SDATA_STATE_RUNNING ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_do_stop (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_teardown_sdata (struct ieee80211_sub_if_data*) ;
 int test_bit (int ,int *) ;

void ieee80211_sdata_stop(struct ieee80211_sub_if_data *sdata)
{
 if (WARN_ON_ONCE(!test_bit(SDATA_STATE_RUNNING, &sdata->state)))
  return;
 ieee80211_do_stop(sdata, 1);
 ieee80211_teardown_sdata(sdata);
}
