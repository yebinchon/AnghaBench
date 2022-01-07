
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int * attrs; int snd_seq; int snd_pid; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int probe_client; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int NL80211_ATTR_COOKIE ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_CMD_PROBE_CLIENT ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int NLMSG_DEFAULT_SIZE ;
 int PTR_ERR (void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int * nla_data (int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rdev_probe_client (struct net_device*,struct net_device*,int const*,int *) ;

__attribute__((used)) static int nl80211_probe_client(struct sk_buff *skb,
    struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct sk_buff *msg;
 void *hdr;
 const u8 *addr;
 u64 cookie;
 int err;

 if (wdev->iftype != NL80211_IFTYPE_AP &&
     wdev->iftype != NL80211_IFTYPE_P2P_GO)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 if (!rdev->ops->probe_client)
  return -EOPNOTSUPP;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, info->snd_pid, info->snd_seq, 0,
        NL80211_CMD_PROBE_CLIENT);

 if (IS_ERR(hdr)) {
  err = PTR_ERR(hdr);
  goto free_msg;
 }

 addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 err = rdev_probe_client(rdev, dev, addr, &cookie);
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
