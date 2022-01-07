
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {int list; int identifier; int mgmt_registrations_lock; int mgmt_registrations; int event_lock; int event_list; int mtx; int mesh_id_up_len; int ssid; } ;
struct vif_params {int use_4addr; int macaddr; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; int ** attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_4__ {int interface_modes; } ;
struct cfg80211_registered_device {int devlist_mtx; int devlist_generation; int wdev_list; int wdev_id; TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef int params ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int add_virtual_intf; } ;


 int BUILD_BUG_ON (int) ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_MAX_MESH_ID_LEN ;
 int IEEE80211_MAX_SSID_LEN ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct wireless_dev*) ;
 size_t NL80211_ATTR_4ADDR ;
 size_t NL80211_ATTR_IFNAME ;
 size_t NL80211_ATTR_IFTYPE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_MESH_ID ;
 size_t NL80211_ATTR_MNTR_FLAGS ;
 int NL80211_IFTYPE_MAX ;

 int NL80211_IFTYPE_MONITOR ;

 int NL80211_IFTYPE_UNSPECIFIED ;
 int NLMSG_DEFAULT_SIZE ;
 int PTR_ERR (struct wireless_dev*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int is_valid_ether_addr (int ) ;
 int list_add_rcu (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct vif_params*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nl80211_send_iface (struct sk_buff*,int ,int ,int ,struct cfg80211_registered_device*,struct wireless_dev*) ;
 int nl80211_valid_4addr (struct cfg80211_registered_device*,int *,int,int) ;
 int nla_data (int *) ;
 int nla_get_u32 (int *) ;
 int nla_get_u8 (int *) ;
 int nla_len (int *) ;
 int nla_memcpy (int ,int *,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int parse_monitor_flags (int *,int *) ;
 struct wireless_dev* rdev_add_virtual_intf (struct cfg80211_registered_device*,int ,int,int *,struct vif_params*) ;
 int spin_lock_init (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_new_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct vif_params params;
 struct wireless_dev *wdev;
 struct sk_buff *msg;
 int err;
 enum nl80211_iftype type = NL80211_IFTYPE_UNSPECIFIED;
 u32 flags;

 memset(&params, 0, sizeof(params));

 if (!info->attrs[NL80211_ATTR_IFNAME])
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_IFTYPE]) {
  type = nla_get_u32(info->attrs[NL80211_ATTR_IFTYPE]);
  if (type > NL80211_IFTYPE_MAX)
   return -EINVAL;
 }

 if (!rdev->ops->add_virtual_intf ||
     !(rdev->wiphy.interface_modes & (1 << type)))
  return -EOPNOTSUPP;

 if (type == 128 && info->attrs[NL80211_ATTR_MAC]) {
  nla_memcpy(params.macaddr, info->attrs[NL80211_ATTR_MAC],
      ETH_ALEN);
  if (!is_valid_ether_addr(params.macaddr))
   return -EADDRNOTAVAIL;
 }

 if (info->attrs[NL80211_ATTR_4ADDR]) {
  params.use_4addr = !!nla_get_u8(info->attrs[NL80211_ATTR_4ADDR]);
  err = nl80211_valid_4addr(rdev, ((void*)0), params.use_4addr, type);
  if (err)
   return err;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = parse_monitor_flags(type == NL80211_IFTYPE_MONITOR ?
      info->attrs[NL80211_ATTR_MNTR_FLAGS] : ((void*)0),
      &flags);
 wdev = rdev_add_virtual_intf(rdev,
    nla_data(info->attrs[NL80211_ATTR_IFNAME]),
    type, err ? ((void*)0) : &flags, &params);
 if (IS_ERR(wdev)) {
  nlmsg_free(msg);
  return PTR_ERR(wdev);
 }

 switch (type) {
 case 129:
  if (!info->attrs[NL80211_ATTR_MESH_ID])
   break;
  wdev_lock(wdev);
  BUILD_BUG_ON(IEEE80211_MAX_SSID_LEN !=
        IEEE80211_MAX_MESH_ID_LEN);
  wdev->mesh_id_up_len =
   nla_len(info->attrs[NL80211_ATTR_MESH_ID]);
  memcpy(wdev->ssid, nla_data(info->attrs[NL80211_ATTR_MESH_ID]),
         wdev->mesh_id_up_len);
  wdev_unlock(wdev);
  break;
 case 128:




  mutex_init(&wdev->mtx);
  INIT_LIST_HEAD(&wdev->event_list);
  spin_lock_init(&wdev->event_lock);
  INIT_LIST_HEAD(&wdev->mgmt_registrations);
  spin_lock_init(&wdev->mgmt_registrations_lock);

  mutex_lock(&rdev->devlist_mtx);
  wdev->identifier = ++rdev->wdev_id;
  list_add_rcu(&wdev->list, &rdev->wdev_list);
  rdev->devlist_generation++;
  mutex_unlock(&rdev->devlist_mtx);
  break;
 default:
  break;
 }

 if (nl80211_send_iface(msg, info->snd_pid, info->snd_seq, 0,
          rdev, wdev) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
