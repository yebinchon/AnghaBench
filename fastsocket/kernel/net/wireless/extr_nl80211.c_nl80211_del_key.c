
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int flags; } ;
struct net_device {TYPE_4__* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct key_parse {int type; int idx; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_4__* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct TYPE_9__ {int default_key; int default_mgmt_key; } ;
struct TYPE_10__ {TYPE_3__ wext; } ;
struct TYPE_7__ {int del_key; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_KEYTYPE_GROUP ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int WIPHY_FLAG_IBSS_RSN ;
 int nl80211_key_allowed (TYPE_4__*) ;
 int nl80211_parse_key (struct genl_info*,struct key_parse*) ;
 int * nla_data (scalar_t__) ;
 int rdev_del_key (struct net_device*,struct net_device*,int,int,int *) ;
 int wdev_lock (TYPE_4__*) ;
 int wdev_unlock (TYPE_4__*) ;

__attribute__((used)) static int nl80211_del_key(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 int err;
 struct net_device *dev = info->user_ptr[1];
 u8 *mac_addr = ((void*)0);
 struct key_parse key;

 err = nl80211_parse_key(info, &key);
 if (err)
  return err;

 if (info->attrs[NL80211_ATTR_MAC])
  mac_addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (key.type == -1) {
  if (mac_addr)
   key.type = NL80211_KEYTYPE_PAIRWISE;
  else
   key.type = NL80211_KEYTYPE_GROUP;
 }


 if (key.type != NL80211_KEYTYPE_PAIRWISE &&
     key.type != NL80211_KEYTYPE_GROUP)
  return -EINVAL;

 if (!rdev->ops->del_key)
  return -EOPNOTSUPP;

 wdev_lock(dev->ieee80211_ptr);
 err = nl80211_key_allowed(dev->ieee80211_ptr);

 if (key.type == NL80211_KEYTYPE_PAIRWISE && mac_addr &&
     !(rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN))
  err = -ENOENT;

 if (!err)
  err = rdev_del_key(rdev, dev, key.idx,
       key.type == NL80211_KEYTYPE_PAIRWISE,
       mac_addr);
 wdev_unlock(dev->ieee80211_ptr);

 return err;
}
