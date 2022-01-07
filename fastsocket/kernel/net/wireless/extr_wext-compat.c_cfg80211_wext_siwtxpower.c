
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int value; scalar_t__ fixed; int disabled; } ;
union iwreq_data {TYPE_2__ txpower; } ;
struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int rfkill_sync; int rfkill; TYPE_1__* ops; } ;
typedef enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;
struct TYPE_3__ {int set_tx_power; } ;


 int DBM_TO_MBM (int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_TXPOW_DBM ;
 int IW_TXPOW_RANGE ;
 int IW_TXPOW_TYPE ;
 int NL80211_TX_POWER_AUTOMATIC ;
 int NL80211_TX_POWER_FIXED ;
 int NL80211_TX_POWER_LIMITED ;
 int rdev_set_tx_power (struct cfg80211_registered_device*,struct wireless_dev*,int,int ) ;
 int rfkill_set_sw_state (int ,int) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_wext_siwtxpower(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 enum nl80211_tx_power_setting type;
 int dbm = 0;

 if ((data->txpower.flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM)
  return -EINVAL;
 if (data->txpower.flags & IW_TXPOW_RANGE)
  return -EINVAL;

 if (!rdev->ops->set_tx_power)
  return -EOPNOTSUPP;


 if (!data->txpower.disabled) {
  rfkill_set_sw_state(rdev->rfkill, 0);

  if (data->txpower.fixed) {




   if (data->txpower.value < 0)
    return -EINVAL;
   dbm = data->txpower.value;
   type = NL80211_TX_POWER_FIXED;

  } else {




   if (data->txpower.value < 0) {
    type = NL80211_TX_POWER_AUTOMATIC;
   } else {
    dbm = data->txpower.value;
    type = NL80211_TX_POWER_LIMITED;
   }
  }
 } else {
  rfkill_set_sw_state(rdev->rfkill, 1);
  schedule_work(&rdev->rfkill_sync);
  return 0;
 }

 return rdev_set_tx_power(rdev, wdev, type, DBM_TO_MBM(dbm));
}
