
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct net_device {TYPE_2__* ops; TYPE_1__ wiphy; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__ wiphy; } ;
struct TYPE_4__ {int tdls_mgmt; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_STATUS_CODE ;
 size_t NL80211_ATTR_TDLS_ACTION ;
 size_t NL80211_ATTR_TDLS_DIALOG_TOKEN ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int * nla_data (int ) ;
 int nla_get_u16 (int ) ;
 int nla_get_u8 (int ) ;
 int nla_len (int ) ;
 int rdev_tdls_mgmt (struct net_device*,struct net_device*,int *,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int nl80211_tdls_mgmt(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 u8 action_code, dialog_token;
 u16 status_code;
 u8 *peer;

 if (!(rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_TDLS) ||
     !rdev->ops->tdls_mgmt)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_TDLS_ACTION] ||
     !info->attrs[NL80211_ATTR_STATUS_CODE] ||
     !info->attrs[NL80211_ATTR_TDLS_DIALOG_TOKEN] ||
     !info->attrs[NL80211_ATTR_IE] ||
     !info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 peer = nla_data(info->attrs[NL80211_ATTR_MAC]);
 action_code = nla_get_u8(info->attrs[NL80211_ATTR_TDLS_ACTION]);
 status_code = nla_get_u16(info->attrs[NL80211_ATTR_STATUS_CODE]);
 dialog_token = nla_get_u8(info->attrs[NL80211_ATTR_TDLS_DIALOG_TOKEN]);

 return rdev_tdls_mgmt(rdev, dev, peer, action_code,
         dialog_token, status_code,
         nla_data(info->attrs[NL80211_ATTR_IE]),
         nla_len(info->attrs[NL80211_ATTR_IE]));
}
