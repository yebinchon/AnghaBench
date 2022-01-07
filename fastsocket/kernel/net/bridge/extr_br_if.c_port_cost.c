
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; TYPE_1__* ethtool_ops; } ;
struct ethtool_cmd {int speed; int cmd; } ;
struct TYPE_2__ {int (* get_settings ) (struct net_device*,struct ethtool_cmd*) ;} ;


 int ETHTOOL_GSET ;




 int strncmp (int ,char*,int) ;
 int stub1 (struct net_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int port_cost(struct net_device *dev)
{
 if (dev->ethtool_ops && dev->ethtool_ops->get_settings) {
  struct ethtool_cmd ecmd = { .cmd = ETHTOOL_GSET, };

  if (!dev->ethtool_ops->get_settings(dev, &ecmd)) {
   switch(ecmd.speed) {
   case 128:
    return 2;
   case 129:
    return 4;
   case 130:
    return 19;
   case 131:
    return 100;
   }
  }
 }


 if (!strncmp(dev->name, "lec", 3))
  return 7;

 if (!strncmp(dev->name, "plip", 4))
  return 2500;

 return 100;
}
