
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int cac_started; int cac_start_time; TYPE_2__* channel; int iftype; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int devlist_mtx; int wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int devlist_mtx; int wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_chan_def {TYPE_2__* chan; int width; } ;
struct TYPE_4__ {scalar_t__ dfs_state; } ;
struct TYPE_3__ {int (* start_radar_detection ) (int *,struct net_device*,struct cfg80211_chan_def*) ;} ;


 int BIT (int ) ;
 int CHAN_MODE_SHARED ;
 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_DFS_USABLE ;
 int cfg80211_can_use_iftype_chan (struct net_device*,struct wireless_dev*,int ,TYPE_2__*,int ,int ) ;
 int cfg80211_chandef_dfs_required (int ,struct cfg80211_chan_def*) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nl80211_parse_chandef (struct net_device*,struct genl_info*,struct cfg80211_chan_def*) ;
 int stub1 (int *,struct net_device*,struct cfg80211_chan_def*) ;

__attribute__((used)) static int nl80211_start_radar_detection(struct sk_buff *skb,
      struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_chan_def chandef;
 int err;

 err = nl80211_parse_chandef(rdev, info, &chandef);
 if (err)
  return err;

 if (wdev->cac_started)
  return -EBUSY;

 err = cfg80211_chandef_dfs_required(wdev->wiphy, &chandef);
 if (err < 0)
  return err;

 if (err == 0)
  return -EINVAL;

 if (chandef.chan->dfs_state != NL80211_DFS_USABLE)
  return -EINVAL;

 if (!rdev->ops->start_radar_detection)
  return -EOPNOTSUPP;

 mutex_lock(&rdev->devlist_mtx);
 err = cfg80211_can_use_iftype_chan(rdev, wdev, wdev->iftype,
        chandef.chan, CHAN_MODE_SHARED,
        BIT(chandef.width));
 if (err)
  goto err_locked;

 err = rdev->ops->start_radar_detection(&rdev->wiphy, dev, &chandef);
 if (!err) {
  wdev->channel = chandef.chan;
  wdev->cac_started = 1;
  wdev->cac_start_time = jiffies;
 }
err_locked:
 mutex_unlock(&rdev->devlist_mtx);

 return err;
}
