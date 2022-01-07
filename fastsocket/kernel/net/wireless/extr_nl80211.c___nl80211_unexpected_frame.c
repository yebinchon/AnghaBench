
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wireless_dev {int ap_unexpected_nlportid; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;


 int ACCESS_ONCE (int ) ;
 int ETH_ALEN ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static bool __nl80211_unexpected_frame(struct net_device *dev, u8 cmd,
           const u8 *addr, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;
 int err;
 u32 nlportid = ACCESS_ONCE(wdev->ap_unexpected_nlportid);

 if (!nlportid)
  return 0;

 msg = nlmsg_new(100, gfp);
 if (!msg)
  return 1;

 hdr = nl80211hdr_put(msg, 0, 0, 0, cmd);
 if (!hdr) {
  nlmsg_free(msg);
  return 1;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, addr))
  goto nla_put_failure;

 err = genlmsg_end(msg, hdr);
 if (err < 0) {
  nlmsg_free(msg);
  return 1;
 }

 genlmsg_unicast(wiphy_net(&rdev->wiphy), msg, nlportid);
 return 1;

 nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
 return 1;
}
