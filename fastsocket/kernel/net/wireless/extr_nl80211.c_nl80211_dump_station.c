
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {int netdev; } ;
struct station_info {int dummy; } ;
struct sk_buff {int len; } ;
struct netlink_callback {int* args; TYPE_2__* nlh; int skb; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef int sinfo ;
struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {int nlmsg_seq; } ;
struct TYPE_4__ {int dump_station; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 TYPE_3__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int memset (struct station_info*,int ,int) ;
 int nl80211_finish_wdev_dump (struct cfg80211_registered_device*) ;
 int nl80211_prepare_wdev_dump (struct sk_buff*,struct netlink_callback*,struct cfg80211_registered_device**,struct wireless_dev**) ;
 scalar_t__ nl80211_send_station (struct sk_buff*,int ,int ,int ,struct cfg80211_registered_device*,int ,int *,struct station_info*) ;
 int rdev_dump_station (struct cfg80211_registered_device*,int ,int,int *,struct station_info*) ;

__attribute__((used)) static int nl80211_dump_station(struct sk_buff *skb,
    struct netlink_callback *cb)
{
 struct station_info sinfo;
 struct cfg80211_registered_device *dev;
 struct wireless_dev *wdev;
 u8 mac_addr[ETH_ALEN];
 int sta_idx = cb->args[2];
 int err;

 err = nl80211_prepare_wdev_dump(skb, cb, &dev, &wdev);
 if (err)
  return err;

 if (!wdev->netdev) {
  err = -EINVAL;
  goto out_err;
 }

 if (!dev->ops->dump_station) {
  err = -EOPNOTSUPP;
  goto out_err;
 }

 while (1) {
  memset(&sinfo, 0, sizeof(sinfo));
  err = rdev_dump_station(dev, wdev->netdev, sta_idx,
     mac_addr, &sinfo);
  if (err == -ENOENT)
   break;
  if (err)
   goto out_err;

  if (nl80211_send_station(skb,
    NETLINK_CB(cb->skb).pid,
    cb->nlh->nlmsg_seq, NLM_F_MULTI,
    dev, wdev->netdev, mac_addr,
    &sinfo) < 0)
   goto out;

  sta_idx++;
 }


 out:
 cb->args[2] = sta_idx;
 err = skb->len;
 out_err:
 nl80211_finish_wdev_dump(dev);

 return err;
}
