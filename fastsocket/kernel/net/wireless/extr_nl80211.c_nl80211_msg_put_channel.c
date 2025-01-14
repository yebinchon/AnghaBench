
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_channel {int flags; int max_power; int dfs_state; int dfs_state_entered; int center_freq; } ;


 int DBM_TO_MBM (int ) ;
 int ENOBUFS ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 int IEEE80211_CHAN_NO_IBSS ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IEEE80211_CHAN_RADAR ;
 int NL80211_FREQUENCY_ATTR_DFS_STATE ;
 int NL80211_FREQUENCY_ATTR_DFS_TIME ;
 int NL80211_FREQUENCY_ATTR_DISABLED ;
 int NL80211_FREQUENCY_ATTR_FREQ ;
 int NL80211_FREQUENCY_ATTR_MAX_TX_POWER ;
 int NL80211_FREQUENCY_ATTR_NO_160MHZ ;
 int NL80211_FREQUENCY_ATTR_NO_80MHZ ;
 int NL80211_FREQUENCY_ATTR_NO_HT40_MINUS ;
 int NL80211_FREQUENCY_ATTR_NO_HT40_PLUS ;
 int NL80211_FREQUENCY_ATTR_NO_IBSS ;
 int NL80211_FREQUENCY_ATTR_PASSIVE_SCAN ;
 int NL80211_FREQUENCY_ATTR_RADAR ;
 int elapsed_jiffies_msecs (int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_msg_put_channel(struct sk_buff *msg,
       struct ieee80211_channel *chan,
       bool large)
{
 if (nla_put_u32(msg, NL80211_FREQUENCY_ATTR_FREQ,
   chan->center_freq))
  goto nla_put_failure;

 if ((chan->flags & IEEE80211_CHAN_DISABLED) &&
     nla_put_flag(msg, NL80211_FREQUENCY_ATTR_DISABLED))
  goto nla_put_failure;
 if ((chan->flags & IEEE80211_CHAN_PASSIVE_SCAN) &&
     nla_put_flag(msg, NL80211_FREQUENCY_ATTR_PASSIVE_SCAN))
  goto nla_put_failure;
 if ((chan->flags & IEEE80211_CHAN_NO_IBSS) &&
     nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_IBSS))
  goto nla_put_failure;
 if (chan->flags & IEEE80211_CHAN_RADAR) {
  if (nla_put_flag(msg, NL80211_FREQUENCY_ATTR_RADAR))
   goto nla_put_failure;
  if (large) {
   u32 time;

   time = elapsed_jiffies_msecs(chan->dfs_state_entered);

   if (nla_put_u32(msg, NL80211_FREQUENCY_ATTR_DFS_STATE,
     chan->dfs_state))
    goto nla_put_failure;
   if (nla_put_u32(msg, NL80211_FREQUENCY_ATTR_DFS_TIME,
     time))
    goto nla_put_failure;
  }
 }

 if (large) {
  if ((chan->flags & IEEE80211_CHAN_NO_HT40MINUS) &&
      nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_HT40_MINUS))
   goto nla_put_failure;
  if ((chan->flags & IEEE80211_CHAN_NO_HT40PLUS) &&
      nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_HT40_PLUS))
   goto nla_put_failure;
  if ((chan->flags & IEEE80211_CHAN_NO_80MHZ) &&
      nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_80MHZ))
   goto nla_put_failure;
  if ((chan->flags & IEEE80211_CHAN_NO_160MHZ) &&
      nla_put_flag(msg, NL80211_FREQUENCY_ATTR_NO_160MHZ))
   goto nla_put_failure;
 }

 if (nla_put_u32(msg, NL80211_FREQUENCY_ATTR_MAX_TX_POWER,
   DBM_TO_MBM(chan->max_power)))
  goto nla_put_failure;

 return 0;

 nla_put_failure:
 return -ENOBUFS;
}
