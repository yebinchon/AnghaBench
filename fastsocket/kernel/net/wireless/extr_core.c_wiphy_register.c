
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int flags; } ;
struct wiphy {int interface_modes; int flags; struct ieee80211_supported_band** bands; TYPE_3__* addresses; int perm_addr; scalar_t__ max_acl_mac_addrs; int n_addresses; scalar_t__ ap_sme_capa; TYPE_1__ wowlan; } ;
struct regulatory_request {char* alpha2; int initiator; int wiphy_idx; } ;
struct TYPE_11__ {int cap; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int band; int n_channels; int n_bitrates; TYPE_5__* channels; TYPE_4__ ht_cap; } ;
struct TYPE_13__ {scalar_t__ pattern_min_len; scalar_t__ pattern_max_len; scalar_t__ n_patterns; } ;
struct TYPE_14__ {int registered; int * debugfsdir; int dev; TYPE_6__ wowlan; } ;
struct cfg80211_registered_device {TYPE_7__ wiphy; int list; int rfkill; TYPE_2__* ops; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_12__ {int band; int max_power; int orig_mpwr; int orig_mag; int flags; int orig_flags; } ;
struct TYPE_10__ {int addr; } ;
struct TYPE_9__ {int set_mac_acl; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_BAND_60GHZ ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_NUM_BANDS ;
 int INT_MAX ;
 scalar_t__ IS_ERR (int *) ;
 int NL80211_REGDOM_SET_BY_DRIVER ;
 int NUM_NL80211_IFTYPES ;
 scalar_t__ WARN_ON (int) ;
 int WIPHY_FLAG_CUSTOM_REGULATORY ;
 int WIPHY_FLAG_HAVE_AP_SME ;
 int WIPHY_WOWLAN_GTK_REKEY_FAILURE ;
 int WIPHY_WOWLAN_SUPPORTS_GTK_REKEY ;
 int cfg80211_debugfs_rdev_add (struct cfg80211_registered_device*) ;
 scalar_t__ cfg80211_disable_40mhz_24ghz ;
 int cfg80211_mutex ;
 int cfg80211_rdev_list ;
 int cfg80211_rdev_list_generation ;
 int * debugfs_create_dir (int ,int ) ;
 int debugfs_remove_recursive (int *) ;
 int device_add (int *) ;
 int device_del (int *) ;
 int get_wiphy_idx (struct wiphy*) ;
 int ieee80211_debugfs_dir ;
 int ieee80211_set_bitrate_flags (struct wiphy*) ;
 int is_zero_ether_addr (int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nl80211_send_reg_change_event (struct regulatory_request*) ;
 int rfkill_register (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int wiphy_name (TYPE_7__*) ;
 int wiphy_regulatory_deregister (struct wiphy*) ;
 int wiphy_regulatory_register (struct wiphy*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;
 int wiphy_verify_combinations (struct wiphy*) ;

int wiphy_register(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);
 int res;
 enum ieee80211_band band;
 struct ieee80211_supported_band *sband;
 bool have_band = 0;
 int i;
 u16 ifmodes = wiphy->interface_modes;







 if (WARN_ON(wiphy->ap_sme_capa &&
      !(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME)))
  return -EINVAL;

 if (WARN_ON(wiphy->addresses && !wiphy->n_addresses))
  return -EINVAL;

 if (WARN_ON(wiphy->addresses &&
      !is_zero_ether_addr(wiphy->perm_addr) &&
      memcmp(wiphy->perm_addr, wiphy->addresses[0].addr,
      ETH_ALEN)))
  return -EINVAL;

 if (WARN_ON(wiphy->max_acl_mac_addrs &&
      (!(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME) ||
       !rdev->ops->set_mac_acl)))
  return -EINVAL;

 if (wiphy->addresses)
  memcpy(wiphy->perm_addr, wiphy->addresses[0].addr, ETH_ALEN);


 WARN_ON(!ifmodes);
 ifmodes &= ((1 << NUM_NL80211_IFTYPES) - 1) & ~1;
 if (WARN_ON(ifmodes != wiphy->interface_modes))
  wiphy->interface_modes = ifmodes;

 res = wiphy_verify_combinations(wiphy);
 if (res)
  return res;


 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
  sband = wiphy->bands[band];
  if (!sband)
   continue;

  sband->band = band;
  if (WARN_ON(!sband->n_channels))
   return -EINVAL;




  if (WARN_ON(band != IEEE80211_BAND_60GHZ &&
       !sband->n_bitrates))
   return -EINVAL;






  if (cfg80211_disable_40mhz_24ghz &&
      band == IEEE80211_BAND_2GHZ &&
      sband->ht_cap.ht_supported) {
   sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;
   sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SGI_40;
  }






  if (WARN_ON(sband->n_bitrates > 32))
   return -EINVAL;

  for (i = 0; i < sband->n_channels; i++) {
   sband->channels[i].orig_flags =
    sband->channels[i].flags;
   sband->channels[i].orig_mag = INT_MAX;
   sband->channels[i].orig_mpwr =
    sband->channels[i].max_power;
   sband->channels[i].band = band;
  }

  have_band = 1;
 }

 if (!have_band) {
  WARN_ON(1);
  return -EINVAL;
 }
 ieee80211_set_bitrate_flags(wiphy);

 mutex_lock(&cfg80211_mutex);

 res = device_add(&rdev->wiphy.dev);
 if (res) {
  mutex_unlock(&cfg80211_mutex);
  return res;
 }


 wiphy_regulatory_register(wiphy);

 list_add_rcu(&rdev->list, &cfg80211_rdev_list);
 cfg80211_rdev_list_generation++;


 rdev->wiphy.debugfsdir =
  debugfs_create_dir(wiphy_name(&rdev->wiphy),
       ieee80211_debugfs_dir);
 if (IS_ERR(rdev->wiphy.debugfsdir))
  rdev->wiphy.debugfsdir = ((void*)0);

 if (wiphy->flags & WIPHY_FLAG_CUSTOM_REGULATORY) {
  struct regulatory_request request;

  request.wiphy_idx = get_wiphy_idx(wiphy);
  request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
  request.alpha2[0] = '9';
  request.alpha2[1] = '9';

  nl80211_send_reg_change_event(&request);
 }

 cfg80211_debugfs_rdev_add(rdev);
 mutex_unlock(&cfg80211_mutex);





 res = rfkill_register(rdev->rfkill);
 if (res) {
  device_del(&rdev->wiphy.dev);

  mutex_lock(&cfg80211_mutex);
  debugfs_remove_recursive(rdev->wiphy.debugfsdir);
  list_del_rcu(&rdev->list);
  wiphy_regulatory_deregister(wiphy);
  mutex_unlock(&cfg80211_mutex);
  return res;
 }

 rtnl_lock();
 rdev->wiphy.registered = 1;
 rtnl_unlock();
 return 0;
}
