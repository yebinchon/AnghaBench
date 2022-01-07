
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int chanctx_conf; } ;
struct ieee80211_sub_if_data {int flags; TYPE_1__ vif; } ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_3__ def; } ;
struct TYPE_5__ {scalar_t__ band; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 int IEEE80211_SDATA_OPERATING_GMODE ;
 int ieee80211_set_wmm_default (struct ieee80211_sub_if_data*,int) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void ieee80211_sta_def_wmm_params(struct ieee80211_sub_if_data *sdata,
      const size_t supp_rates_len,
      const u8 *supp_rates)
{
 struct ieee80211_chanctx_conf *chanctx_conf;
 int i, have_higher_than_11mbit = 0;


 for (i = 0; i < supp_rates_len; i++)
  if ((supp_rates[i] & 0x7f) * 5 > 110)
   have_higher_than_11mbit = 1;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);

 if (chanctx_conf &&
     chanctx_conf->def.chan->band == IEEE80211_BAND_2GHZ &&
     have_higher_than_11mbit)
  sdata->flags |= IEEE80211_SDATA_OPERATING_GMODE;
 else
  sdata->flags &= ~IEEE80211_SDATA_OPERATING_GMODE;
 rcu_read_unlock();

 ieee80211_set_wmm_default(sdata, 1);
}
