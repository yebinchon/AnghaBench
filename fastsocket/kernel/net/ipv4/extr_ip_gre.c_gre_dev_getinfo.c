
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int strcpy (int ,char*) ;

__attribute__((used)) static void gre_dev_getinfo(struct net_device *netdev,
     struct ethtool_drvinfo *info)
{
 strcpy(info->driver, "ip_gre");
}
