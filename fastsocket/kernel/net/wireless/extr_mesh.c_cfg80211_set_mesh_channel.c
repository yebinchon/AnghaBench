
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_chan_def {scalar_t__ width; int chan; } ;
struct wireless_dev {struct cfg80211_chan_def preset_chandef; scalar_t__ mesh_id_len; int channel; int netdev; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ libertas_set_mesh_channel; } ;


 int CHAN_MODE_SHARED ;
 int EBUSY ;
 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ;
 int cfg80211_can_use_chan (struct cfg80211_registered_device*,struct wireless_dev*,int ,int ) ;
 int netif_running (int ) ;
 int rdev_libertas_set_mesh_channel (struct cfg80211_registered_device*,int ,int ) ;

int cfg80211_set_mesh_channel(struct cfg80211_registered_device *rdev,
         struct wireless_dev *wdev,
         struct cfg80211_chan_def *chandef)
{
 int err;
 if (rdev->ops->libertas_set_mesh_channel) {
  if (chandef->width != NL80211_CHAN_WIDTH_20_NOHT)
   return -EINVAL;

  if (!netif_running(wdev->netdev))
   return -ENETDOWN;

  err = cfg80211_can_use_chan(rdev, wdev, chandef->chan,
         CHAN_MODE_SHARED);
  if (err)
   return err;

  err = rdev_libertas_set_mesh_channel(rdev, wdev->netdev,
           chandef->chan);
  if (!err)
   wdev->channel = chandef->chan;

  return err;
 }

 if (wdev->mesh_id_len)
  return -EBUSY;

 wdev->preset_chandef = *chandef;
 return 0;
}
