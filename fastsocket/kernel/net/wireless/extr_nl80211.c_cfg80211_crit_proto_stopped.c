
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wireless_dev {int wiphy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; scalar_t__ crit_proto_nlportid; } ;
typedef int gfp_t ;


 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_CRIT_PROTOCOL_STOP ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,scalar_t__) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

void cfg80211_crit_proto_stopped(struct wireless_dev *wdev, gfp_t gfp)
{
 struct cfg80211_registered_device *rdev;
 struct sk_buff *msg;
 void *hdr;
 u32 nlportid;

 rdev = wiphy_to_dev(wdev->wiphy);
 if (!rdev->crit_proto_nlportid)
  return;

 nlportid = rdev->crit_proto_nlportid;
 rdev->crit_proto_nlportid = 0;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_CRIT_PROTOCOL_STOP);
 if (!hdr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u64(msg, NL80211_ATTR_WDEV, wdev_id(wdev)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_unicast(wiphy_net(&rdev->wiphy), msg, nlportid);
 return;

 nla_put_failure:
 if (hdr)
  genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);

}
