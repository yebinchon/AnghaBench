
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* dsa_driver_version ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void dsa_slave_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, "dsa", 32);
 strncpy(drvinfo->version, dsa_driver_version, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, "platform", 32);
}
