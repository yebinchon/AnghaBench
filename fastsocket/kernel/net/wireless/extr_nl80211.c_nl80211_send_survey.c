
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct survey_info {int filled; int channel_time_tx; int channel_time_rx; int channel_time_ext_busy; int channel_time_busy; int channel_time; int noise; TYPE_1__* channel; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct TYPE_2__ {int center_freq; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_SURVEY_INFO ;
 int NL80211_CMD_NEW_SURVEY_RESULTS ;
 int NL80211_SURVEY_INFO_CHANNEL_TIME ;
 int NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY ;
 int NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY ;
 int NL80211_SURVEY_INFO_CHANNEL_TIME_RX ;
 int NL80211_SURVEY_INFO_CHANNEL_TIME_TX ;
 int NL80211_SURVEY_INFO_FREQUENCY ;
 int NL80211_SURVEY_INFO_IN_USE ;
 int NL80211_SURVEY_INFO_NOISE ;
 int SURVEY_INFO_CHANNEL_TIME ;
 int SURVEY_INFO_CHANNEL_TIME_BUSY ;
 int SURVEY_INFO_CHANNEL_TIME_EXT_BUSY ;
 int SURVEY_INFO_CHANNEL_TIME_RX ;
 int SURVEY_INFO_CHANNEL_TIME_TX ;
 int SURVEY_INFO_IN_USE ;
 int SURVEY_INFO_NOISE_DBM ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int nl80211_send_survey(struct sk_buff *msg, u32 portid, u32 seq,
    int flags, struct net_device *dev,
    struct survey_info *survey)
{
 void *hdr;
 struct nlattr *infoattr;

 hdr = nl80211hdr_put(msg, portid, seq, flags,
        NL80211_CMD_NEW_SURVEY_RESULTS);
 if (!hdr)
  return -ENOMEM;

 if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
  goto nla_put_failure;

 infoattr = nla_nest_start(msg, NL80211_ATTR_SURVEY_INFO);
 if (!infoattr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_SURVEY_INFO_FREQUENCY,
   survey->channel->center_freq))
  goto nla_put_failure;

 if ((survey->filled & SURVEY_INFO_NOISE_DBM) &&
     nla_put_u8(msg, NL80211_SURVEY_INFO_NOISE, survey->noise))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_IN_USE) &&
     nla_put_flag(msg, NL80211_SURVEY_INFO_IN_USE))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_CHANNEL_TIME) &&
     nla_put_u64(msg, NL80211_SURVEY_INFO_CHANNEL_TIME,
   survey->channel_time))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_BUSY) &&
     nla_put_u64(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_BUSY,
   survey->channel_time_busy))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_EXT_BUSY) &&
     nla_put_u64(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_EXT_BUSY,
   survey->channel_time_ext_busy))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_RX) &&
     nla_put_u64(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_RX,
   survey->channel_time_rx))
  goto nla_put_failure;
 if ((survey->filled & SURVEY_INFO_CHANNEL_TIME_TX) &&
     nla_put_u64(msg, NL80211_SURVEY_INFO_CHANNEL_TIME_TX,
   survey->channel_time_tx))
  goto nla_put_failure;

 nla_nest_end(msg, infoattr);

 return genlmsg_end(msg, hdr);

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 return -EMSGSIZE;
}
