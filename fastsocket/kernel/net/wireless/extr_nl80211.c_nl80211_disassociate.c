
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct TYPE_3__ {int disassoc; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_LOCAL_STATE_CHANGE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_REASON_CODE ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int cfg80211_mlme_disassoc (struct net_device*,struct net_device*,int const*,int const*,int,scalar_t__,int) ;
 int is_valid_ie_attr (scalar_t__) ;
 int * nla_data (scalar_t__) ;
 scalar_t__ nla_get_u16 (scalar_t__) ;
 int nla_len (scalar_t__) ;

__attribute__((used)) static int nl80211_disassociate(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 const u8 *ie = ((void*)0), *bssid;
 int ie_len = 0;
 u16 reason_code;
 bool local_state_change;

 if (!is_valid_ie_attr(info->attrs[NL80211_ATTR_IE]))
  return -EINVAL;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 if (!info->attrs[NL80211_ATTR_REASON_CODE])
  return -EINVAL;

 if (!rdev->ops->disassoc)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
  return -EOPNOTSUPP;

 bssid = nla_data(info->attrs[NL80211_ATTR_MAC]);

 reason_code = nla_get_u16(info->attrs[NL80211_ATTR_REASON_CODE]);
 if (reason_code == 0) {

  return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_IE]) {
  ie = nla_data(info->attrs[NL80211_ATTR_IE]);
  ie_len = nla_len(info->attrs[NL80211_ATTR_IE]);
 }

 local_state_change = !!info->attrs[NL80211_ATTR_LOCAL_STATE_CHANGE];

 return cfg80211_mlme_disassoc(rdev, dev, bssid, ie, ie_len, reason_code,
          local_state_change);
}
