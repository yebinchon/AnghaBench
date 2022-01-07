
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int GFP_ATOMIC ;
 int NL80211_ATTR_FREQ_AFTER ;
 int NL80211_ATTR_FREQ_BEFORE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_REG_BEACON_HINT ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_allns (struct sk_buff*,int ,int ,int ) ;
 int get_wiphy_idx (struct wiphy*) ;
 scalar_t__ nl80211_msg_put_channel (struct sk_buff*,struct ieee80211_channel*,int) ;
 TYPE_1__ nl80211_regulatory_mcgrp ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nl80211_send_beacon_hint_event(struct wiphy *wiphy,
        struct ieee80211_channel *channel_before,
        struct ieee80211_channel *channel_after)
{
 struct sk_buff *msg;
 void *hdr;
 struct nlattr *nl_freq;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_REG_BEACON_HINT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }





 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, get_wiphy_idx(wiphy)))
  goto nla_put_failure;


 nl_freq = nla_nest_start(msg, NL80211_ATTR_FREQ_BEFORE);
 if (!nl_freq)
  goto nla_put_failure;
 if (nl80211_msg_put_channel(msg, channel_before, 0))
  goto nla_put_failure;
 nla_nest_end(msg, nl_freq);


 nl_freq = nla_nest_start(msg, NL80211_ATTR_FREQ_AFTER);
 if (!nl_freq)
  goto nla_put_failure;
 if (nl80211_msg_put_channel(msg, channel_after, 0))
  goto nla_put_failure;
 nla_nest_end(msg, nl_freq);

 genlmsg_end(msg, hdr);

 rcu_read_lock();
 genlmsg_multicast_allns(msg, 0, nl80211_regulatory_mcgrp.id,
    GFP_ATOMIC);
 rcu_read_unlock();

 return;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
