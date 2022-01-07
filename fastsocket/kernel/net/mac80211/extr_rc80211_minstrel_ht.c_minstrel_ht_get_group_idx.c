
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_tx_rate {int idx; int flags; } ;


 int GROUP_IDX (int,int,int) ;
 int IEEE80211_TX_RC_40_MHZ_WIDTH ;
 int IEEE80211_TX_RC_SHORT_GI ;
 int MCS_GROUP_RATES ;

__attribute__((used)) static int
minstrel_ht_get_group_idx(struct ieee80211_tx_rate *rate)
{
 return GROUP_IDX((rate->idx / MCS_GROUP_RATES) + 1,
    !!(rate->flags & IEEE80211_TX_RC_SHORT_GI),
    !!(rate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH));
}
