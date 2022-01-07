
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 int strcpy (int ,char*) ;
 char* vlan_fullname ;
 char* vlan_version ;

__attribute__((used)) static void vlan_ethtool_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *info)
{
 strcpy(info->driver, vlan_fullname);
 strcpy(info->version, vlan_version);
 strcpy(info->fw_version, "N/A");
}
