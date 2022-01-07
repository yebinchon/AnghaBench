
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int auth_type; } ;
struct TYPE_13__ {int default_key; int default_mgmt_key; int keys; TYPE_4__ connect; } ;
struct wireless_dev {scalar_t__ iftype; int ps; int ps_timeout; TYPE_7__* wiphy; int list; TYPE_5__ wext; int mesh_id_up_len; int ssid; int cleanup_work; int use_4addr; int sme_state; struct net_device* netdev; int identifier; int mgmt_registrations_lock; int mgmt_registrations; int event_lock; int event_list; int mtx; } ;
struct notifier_block {int dummy; } ;
struct TYPE_9__ {int kobj; } ;
struct net_device {TYPE_1__ dev; int * ethtool_ops; int features; struct wireless_dev* ieee80211_ptr; } ;
struct mesh_setup {int mesh_id_len; int mesh_id; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_11__ {TYPE_2__ dev; } ;
struct cfg80211_registered_device {int devlist_mtx; int rfkill; int devlist_generation; TYPE_6__* ops; int opencount; int sched_scan_mtx; TYPE_3__ wiphy; int wdev_list; int wdev_id; } ;
typedef int setup ;
struct TYPE_16__ {int ext_priv_flags; } ;
struct TYPE_15__ {int flags; int interface_modes; } ;
struct TYPE_14__ {int set_power_mgmt; } ;


 int BIT (int) ;
 int CFG80211_SME_IDLE ;
 int EOPNOTSUPP ;
 int ERFKILL ;
 int IFF_DONT_BRIDGE ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;







 int NETIF_F_NETNS_LOCAL ;
 int NL80211_AUTHTYPE_AUTOMATIC ;


 int NL80211_IFTYPE_P2P_CLIENT ;

 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int NOTIFY_DONE ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int WARN_ON (int) ;
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ;
 int __cfg80211_join_mesh (struct cfg80211_registered_device*,struct net_device*,struct mesh_setup*,int *) ;
 int cancel_work_sync (int *) ;
 int cfg80211_can_add_interface (struct cfg80211_registered_device*,int) ;
 int cfg80211_ethtool_ops ;
 int cfg80211_ibss_wext_join (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_leave (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_mgd_wext_connect (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_mlme_purge_registrations (struct wireless_dev*) ;
 int cfg80211_process_wdev_events (struct wireless_dev*) ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_update_iface_num (struct cfg80211_registered_device*,int,int) ;
 int cfg80211_wq ;
 int default_mesh_config ;
 int default_mesh_setup ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int kfree (int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int memcpy (struct mesh_setup*,int *,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_8__* netdev_extended (struct net_device*) ;
 int netdev_set_default_ethtool_ops (struct net_device*,int *) ;
 int notifier_from_errno (int) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 int rdev_set_power_mgmt (struct cfg80211_registered_device*,struct net_device*,int,int) ;
 int rfkill_blocked (int ) ;
 int spin_lock_init (int *) ;
 int synchronize_rcu () ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 int wdev_cleanup_work ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (TYPE_7__*) ;
 int wiphy_type ;

__attribute__((used)) static int cfg80211_netdev_notifier_call(struct notifier_block *nb,
      unsigned long state,
      void *ndev)
{
 struct net_device *dev = ndev;
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev;
 int ret;

 if (!wdev)
  return NOTIFY_DONE;

 rdev = wiphy_to_dev(wdev->wiphy);

 WARN_ON(wdev->iftype == NL80211_IFTYPE_UNSPECIFIED);

 switch (state) {
 case 135:
  SET_NETDEV_DEVTYPE(dev, &wiphy_type);
  break;
 case 133:





  mutex_init(&wdev->mtx);
  INIT_WORK(&wdev->cleanup_work, wdev_cleanup_work);
  INIT_LIST_HEAD(&wdev->event_list);
  spin_lock_init(&wdev->event_lock);
  INIT_LIST_HEAD(&wdev->mgmt_registrations);
  spin_lock_init(&wdev->mgmt_registrations_lock);

  mutex_lock(&rdev->devlist_mtx);
  wdev->identifier = ++rdev->wdev_id;
  list_add_rcu(&wdev->list, &rdev->wdev_list);
  rdev->devlist_generation++;

  dev->features |= NETIF_F_NETNS_LOCAL;

  if (sysfs_create_link(&dev->dev.kobj, &rdev->wiphy.dev.kobj,
          "phy80211")) {
   pr_err("failed to add phy80211 symlink to netdev!\n");
  }
  wdev->netdev = dev;
  wdev->sme_state = CFG80211_SME_IDLE;
  mutex_unlock(&rdev->devlist_mtx);






  if (wdev->wiphy->flags & WIPHY_FLAG_PS_ON_BY_DEFAULT)
   wdev->ps = 1;
  else
   wdev->ps = 0;

  wdev->ps_timeout = -1;




  if (!dev->ethtool_ops)
   dev->ethtool_ops = &cfg80211_ethtool_ops;


  if ((wdev->iftype == 128 ||
       wdev->iftype == NL80211_IFTYPE_P2P_CLIENT ||
       wdev->iftype == 130) && !wdev->use_4addr)
   netdev_extended(dev)->ext_priv_flags |= IFF_DONT_BRIDGE;
  break;
 case 136:
  cfg80211_leave(rdev, wdev);
  break;
 case 137:
  cfg80211_update_iface_num(rdev, wdev->iftype, -1);
  dev_hold(dev);
  queue_work(cfg80211_wq, &wdev->cleanup_work);
  break;
 case 131:






  if (cancel_work_sync(&wdev->cleanup_work)) {
   mutex_lock(&rdev->devlist_mtx);
   rdev->opencount--;
   mutex_unlock(&rdev->devlist_mtx);
   dev_put(dev);
  }
  cfg80211_update_iface_num(rdev, wdev->iftype, 1);
  cfg80211_lock_rdev(rdev);
  mutex_lock(&rdev->devlist_mtx);
  mutex_lock(&rdev->sched_scan_mtx);
  wdev_lock(wdev);
  switch (wdev->iftype) {
  default:
   break;
  }
  wdev_unlock(wdev);
  mutex_unlock(&rdev->sched_scan_mtx);
  rdev->opencount++;
  mutex_unlock(&rdev->devlist_mtx);
  cfg80211_unlock_rdev(rdev);





  if ((wdev->iftype == 128 ||
       wdev->iftype == NL80211_IFTYPE_P2P_CLIENT) &&
      rdev->ops->set_power_mgmt)
   if (rdev_set_power_mgmt(rdev, dev, wdev->ps,
      wdev->ps_timeout)) {

    wdev->ps = 0;
   }
  break;
 case 132:





  mutex_lock(&rdev->devlist_mtx);







  if (!list_empty(&wdev->list)) {
   sysfs_remove_link(&dev->dev.kobj, "phy80211");
   list_del_rcu(&wdev->list);
   rdev->devlist_generation++;
   cfg80211_mlme_purge_registrations(wdev);



  }
  mutex_unlock(&rdev->devlist_mtx);






  synchronize_rcu();
  INIT_LIST_HEAD(&wdev->list);




  cfg80211_process_wdev_events(wdev);
  break;
 case 134:
  if (!(wdev->wiphy->interface_modes & BIT(wdev->iftype)))
   return notifier_from_errno(-EOPNOTSUPP);
  if (rfkill_blocked(rdev->rfkill))
   return notifier_from_errno(-ERFKILL);
  mutex_lock(&rdev->devlist_mtx);
  ret = cfg80211_can_add_interface(rdev, wdev->iftype);
  mutex_unlock(&rdev->devlist_mtx);
  if (ret)
   return notifier_from_errno(ret);
  break;
 }

 return NOTIFY_DONE;
}
