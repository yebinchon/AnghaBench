
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wireless_dev {TYPE_3__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_9__ {char* release; } ;
struct TYPE_8__ {char* fw_version; } ;
struct TYPE_7__ {TYPE_1__* driver; } ;
struct TYPE_6__ {char* name; } ;


 char* dev_name (TYPE_2__*) ;
 TYPE_4__* init_utsname () ;
 int strlcpy (int ,char*,int) ;
 TYPE_2__* wiphy_dev (TYPE_3__*) ;

__attribute__((used)) static void cfg80211_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 strlcpy(info->driver, wiphy_dev(wdev->wiphy)->driver->name,
  sizeof(info->driver));

 strlcpy(info->version, init_utsname()->release, sizeof(info->version));

 if (wdev->wiphy->fw_version[0])
  strlcpy(info->fw_version, wdev->wiphy->fw_version,
   sizeof(info->fw_version));
 else
  strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));

 strlcpy(info->bus_info, dev_name(wiphy_dev(wdev->wiphy)),
  sizeof(info->bus_info));
}
