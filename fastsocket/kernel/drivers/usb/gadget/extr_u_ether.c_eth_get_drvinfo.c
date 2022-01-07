
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct eth_dev {TYPE_1__* gadget; } ;
struct TYPE_2__ {char* name; int dev; } ;


 char* UETH__VERSION ;
 char* dev_name (int *) ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void eth_get_drvinfo(struct net_device *net, struct ethtool_drvinfo *p)
{
 struct eth_dev *dev = netdev_priv(net);

 strlcpy(p->driver, "g_ether", sizeof p->driver);
 strlcpy(p->version, UETH__VERSION, sizeof p->version);
 strlcpy(p->fw_version, dev->gadget->name, sizeof p->fw_version);
 strlcpy(p->bus_info, dev_name(&dev->gadget->dev), sizeof p->bus_info);
}
