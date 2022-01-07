
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int fixed; int value; int disabled; } ;
union iwreq_data {TYPE_2__ txpower; } ;
struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int rfkill; TYPE_1__* ops; } ;
struct TYPE_3__ {int get_tx_power; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_TXPOW_DBM ;
 int IW_TXPOW_RANGE ;
 int IW_TXPOW_TYPE ;
 int rdev_get_tx_power (struct cfg80211_registered_device*,struct wireless_dev*,int*) ;
 int rfkill_blocked (int ) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_wext_giwtxpower(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 int err, val;

 if ((data->txpower.flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM)
  return -EINVAL;
 if (data->txpower.flags & IW_TXPOW_RANGE)
  return -EINVAL;

 if (!rdev->ops->get_tx_power)
  return -EOPNOTSUPP;

 err = rdev_get_tx_power(rdev, wdev, &val);
 if (err)
  return err;


 data->txpower.fixed = 1;
 data->txpower.disabled = rfkill_blocked(rdev->rfkill);
 data->txpower.value = val;
 data->txpower.flags = IW_TXPOW_DBM;

 return 0;
}
