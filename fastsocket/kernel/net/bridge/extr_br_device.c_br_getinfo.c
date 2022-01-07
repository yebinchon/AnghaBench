
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* BR_VERSION ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void br_getinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strcpy(info->driver, "bridge");
 strcpy(info->version, BR_VERSION);
 strcpy(info->fw_version, "N/A");
 strcpy(info->bus_info, "N/A");
}
