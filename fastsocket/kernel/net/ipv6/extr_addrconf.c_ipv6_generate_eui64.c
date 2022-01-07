
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int type; } ;
 int addrconf_ifid_arcnet (int *,struct net_device*) ;
 int addrconf_ifid_eui48 (int *,struct net_device*) ;
 int addrconf_ifid_infiniband (int *,struct net_device*) ;
 int addrconf_ifid_sit (int *,struct net_device*) ;

__attribute__((used)) static int ipv6_generate_eui64(u8 *eui, struct net_device *dev)
{
 switch (dev->type) {
 case 132:
 case 131:
 case 130:
  return addrconf_ifid_eui48(eui, dev);
 case 133:
  return addrconf_ifid_arcnet(eui, dev);
 case 129:
  return addrconf_ifid_infiniband(eui, dev);
 case 128:
  return addrconf_ifid_sit(eui, dev);
 }
 return -1;
}
