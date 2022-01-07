
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vif_params {int use_4addr; } ;
struct net_device {int priv_flags; TYPE_4__* ieee80211_ptr; } ;
struct TYPE_6__ {int interface_modes; } ;
struct cfg80211_registered_device {int devlist_mtx; TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_8__ {int iftype; int use_4addr; scalar_t__ mesh_id_up_len; } ;
struct TYPE_7__ {int ext_priv_flags; } ;
struct TYPE_5__ {int change_virtual_intf; } ;


 int ASSERT_RDEV_LOCK (struct cfg80211_registered_device*) ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int IFF_BRIDGE_PORT ;
 int IFF_DONT_BRIDGE ;
 int WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_can_change_interface (struct cfg80211_registered_device*,TYPE_4__*,int) ;
 int cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_leave_ibss (struct cfg80211_registered_device*,struct net_device*,int) ;
 int cfg80211_process_rdev_events (struct cfg80211_registered_device*) ;
 int cfg80211_stop_ap (struct cfg80211_registered_device*,struct net_device*) ;
 int cfg80211_update_iface_num (struct cfg80211_registered_device*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__* netdev_extended (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rdev_change_virtual_intf (struct cfg80211_registered_device*,struct net_device*,int,int *,struct vif_params*) ;

int cfg80211_change_iface(struct cfg80211_registered_device *rdev,
     struct net_device *dev, enum nl80211_iftype ntype,
     u32 *flags, struct vif_params *params)
{
 int err;
 enum nl80211_iftype otype = dev->ieee80211_ptr->iftype;

 ASSERT_RDEV_LOCK(rdev);


 if (otype == 137)
  return -EOPNOTSUPP;


 if (ntype == 133)
  return -EOPNOTSUPP;

 if (!rdev->ops->change_virtual_intf ||
     !(rdev->wiphy.interface_modes & (1 << ntype)))
  return -EOPNOTSUPP;


 if ((dev->priv_flags & IFF_BRIDGE_PORT) &&
     (ntype == 139 ||
      ntype == 131 ||
      ntype == 134))
  return -EBUSY;

 if (ntype != otype && netif_running(dev)) {
  mutex_lock(&rdev->devlist_mtx);
  err = cfg80211_can_change_interface(rdev, dev->ieee80211_ptr,
          ntype);
  mutex_unlock(&rdev->devlist_mtx);
  if (err)
   return err;

  dev->ieee80211_ptr->use_4addr = 0;
  dev->ieee80211_ptr->mesh_id_up_len = 0;

  switch (otype) {
  case 138:
   cfg80211_stop_ap(rdev, dev);
   break;
  case 139:
   cfg80211_leave_ibss(rdev, dev, 0);
   break;
  case 131:
  case 134:
   cfg80211_disconnect(rdev, dev,
         WLAN_REASON_DEAUTH_LEAVING, 1);
   break;
  case 136:

   break;
  default:
   break;
  }

  cfg80211_process_rdev_events(rdev);
 }

 err = rdev_change_virtual_intf(rdev, dev, ntype, flags, params);

 WARN_ON(!err && dev->ieee80211_ptr->iftype != ntype);

 if (!err && params && params->use_4addr != -1)
  dev->ieee80211_ptr->use_4addr = params->use_4addr;

 if (!err) {
  netdev_extended(dev)->ext_priv_flags &= ~IFF_DONT_BRIDGE;
  switch (ntype) {
  case 131:
   if (dev->ieee80211_ptr->use_4addr)
    break;

  case 134:
  case 139:
   netdev_extended(dev)->ext_priv_flags |= IFF_DONT_BRIDGE;
   break;
  case 132:
  case 138:
  case 137:
  case 129:
  case 136:

   break;
  case 135:

   break;
  case 130:
  case 128:

   break;
  case 133:
   WARN_ON(1);
   break;
  }
 }

 if (!err && ntype != otype && netif_running(dev)) {
  cfg80211_update_iface_num(rdev, ntype, 1);
  cfg80211_update_iface_num(rdev, otype, -1);
 }

 return err;
}
