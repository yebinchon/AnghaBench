
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {int flags; scalar_t__ max_remain_on_channel_duration; } ;
struct wireless_dev {TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; int * attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int chan; } ;
struct TYPE_3__ {int remain_on_channel; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int NL80211_ATTR_COOKIE ;
 size_t NL80211_ATTR_DURATION ;
 size_t NL80211_ATTR_WIPHY_FREQ ;
 int NL80211_CMD_REMAIN_ON_CHANNEL ;
 scalar_t__ NL80211_MIN_REMAIN_ON_CHANNEL_TIME ;
 int NLMSG_DEFAULT_SIZE ;
 int PTR_ERR (void*) ;
 int WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nl80211_parse_chandef (struct wireless_dev*,struct genl_info*,struct cfg80211_chan_def*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_get_u32 (int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rdev_remain_on_channel (struct wireless_dev*,struct wireless_dev*,int ,scalar_t__,int *) ;

__attribute__((used)) static int nl80211_remain_on_channel(struct sk_buff *skb,
         struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];
 struct cfg80211_chan_def chandef;
 struct sk_buff *msg;
 void *hdr;
 u64 cookie;
 u32 duration;
 int err;

 if (!info->attrs[NL80211_ATTR_WIPHY_FREQ] ||
     !info->attrs[NL80211_ATTR_DURATION])
  return -EINVAL;

 duration = nla_get_u32(info->attrs[NL80211_ATTR_DURATION]);

 if (!rdev->ops->remain_on_channel ||
     !(rdev->wiphy.flags & WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL))
  return -EOPNOTSUPP;





 if (duration < NL80211_MIN_REMAIN_ON_CHANNEL_TIME ||
     duration > rdev->wiphy.max_remain_on_channel_duration)
  return -EINVAL;

 err = nl80211_parse_chandef(rdev, info, &chandef);
 if (err)
  return err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, info->snd_pid, info->snd_seq, 0,
        NL80211_CMD_REMAIN_ON_CHANNEL);

 if (IS_ERR(hdr)) {
  err = PTR_ERR(hdr);
  goto free_msg;
 }

 err = rdev_remain_on_channel(rdev, wdev, chandef.chan,
         duration, &cookie);

 if (err)
  goto free_msg;

 if (nla_put_u64(msg, NL80211_ATTR_COOKIE, cookie))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 return genlmsg_reply(msg, info);

 nla_put_failure:
 err = -ENOBUFS;
 free_msg:
 nlmsg_free(msg);
 return err;
}
