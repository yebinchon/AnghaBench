
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_update_ft_ies_params {int ie_len; int ie; int md; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef int ft_params ;
struct TYPE_2__ {int update_ft_ies; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_MDID ;
 int is_valid_ie_attr (int ) ;
 int memset (struct cfg80211_update_ft_ies_params*,int ,int) ;
 int nla_data (int ) ;
 int nla_get_u16 (int ) ;
 int nla_len (int ) ;
 int rdev_update_ft_ies (struct net_device*,struct net_device*,struct cfg80211_update_ft_ies_params*) ;

__attribute__((used)) static int nl80211_update_ft_ies(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct cfg80211_update_ft_ies_params ft_params;
 struct net_device *dev = info->user_ptr[1];

 if (!rdev->ops->update_ft_ies)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_MDID] ||
     !is_valid_ie_attr(info->attrs[NL80211_ATTR_IE]))
  return -EINVAL;

 memset(&ft_params, 0, sizeof(ft_params));
 ft_params.md = nla_get_u16(info->attrs[NL80211_ATTR_MDID]);
 ft_params.ie = nla_data(info->attrs[NL80211_ATTR_IE]);
 ft_params.ie_len = nla_len(info->attrs[NL80211_ATTR_IE]);

 return rdev_update_ft_ies(rdev, dev, &ft_params);
}
