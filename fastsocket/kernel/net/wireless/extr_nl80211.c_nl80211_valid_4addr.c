
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int priv_flags; } ;
struct TYPE_2__ {int flags; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IFF_BRIDGE_PORT ;


 int WIPHY_FLAG_4ADDR_AP ;
 int WIPHY_FLAG_4ADDR_STATION ;

__attribute__((used)) static int nl80211_valid_4addr(struct cfg80211_registered_device *rdev,
          struct net_device *netdev, u8 use_4addr,
          enum nl80211_iftype iftype)
{
 if (!use_4addr) {
  if (netdev && (netdev->priv_flags & IFF_BRIDGE_PORT))
   return -EBUSY;
  return 0;
 }

 switch (iftype) {
 case 129:
  if (rdev->wiphy.flags & WIPHY_FLAG_4ADDR_AP)
   return 0;
  break;
 case 128:
  if (rdev->wiphy.flags & WIPHY_FLAG_4ADDR_STATION)
   return 0;
  break;
 default:
  break;
 }

 return -EOPNOTSUPP;
}
