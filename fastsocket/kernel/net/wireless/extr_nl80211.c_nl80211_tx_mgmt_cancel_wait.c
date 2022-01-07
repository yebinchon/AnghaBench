
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int iftype; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int iftype; TYPE_1__* ops; } ;
struct TYPE_2__ {int mgmt_tx_cancel_wait; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_COOKIE ;







 int nla_get_u64 (int ) ;
 int rdev_mgmt_tx_cancel_wait (struct wireless_dev*,struct wireless_dev*,int ) ;

__attribute__((used)) static int nl80211_tx_mgmt_cancel_wait(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];
 u64 cookie;

 if (!info->attrs[NL80211_ATTR_COOKIE])
  return -EINVAL;

 if (!rdev->ops->mgmt_tx_cancel_wait)
  return -EOPNOTSUPP;

 switch (wdev->iftype) {
 case 128:
 case 134:
 case 131:
 case 133:
 case 132:
 case 129:
 case 130:
  break;
 default:
  return -EOPNOTSUPP;
 }

 cookie = nla_get_u64(info->attrs[NL80211_ATTR_COOKIE]);

 return rdev_mgmt_tx_cancel_wait(rdev, wdev, cookie);
}
