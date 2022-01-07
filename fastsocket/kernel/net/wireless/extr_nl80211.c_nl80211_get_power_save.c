
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ ps; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int snd_seq; int snd_pid; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
typedef enum nl80211_ps_state { ____Placeholder_nl80211_ps_state } nl80211_ps_state ;
struct TYPE_2__ {int set_power_mgmt; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NL80211_ATTR_PS_STATE ;
 int NL80211_CMD_GET_POWER_SAVE ;
 int NL80211_PS_DISABLED ;
 int NL80211_PS_ENABLED ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int nl80211_get_power_save(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 enum nl80211_ps_state ps_state;
 struct wireless_dev *wdev;
 struct net_device *dev = info->user_ptr[1];
 struct sk_buff *msg;
 void *hdr;
 int err;

 wdev = dev->ieee80211_ptr;

 if (!rdev->ops->set_power_mgmt)
  return -EOPNOTSUPP;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, info->snd_pid, info->snd_seq, 0,
        NL80211_CMD_GET_POWER_SAVE);
 if (!hdr) {
  err = -ENOBUFS;
  goto free_msg;
 }

 if (wdev->ps)
  ps_state = NL80211_PS_ENABLED;
 else
  ps_state = NL80211_PS_DISABLED;

 if (nla_put_u32(msg, NL80211_ATTR_PS_STATE, ps_state))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 return genlmsg_reply(msg, info);

 nla_put_failure:
 err = -ENOBUFS;
 free_msg:
 nlmsg_free(msg);
 return err;
}
