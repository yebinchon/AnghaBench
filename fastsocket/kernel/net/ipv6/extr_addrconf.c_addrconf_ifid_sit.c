
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int priv_flags; scalar_t__ dev_addr; } ;
typedef int __be32 ;


 int IFF_ISATAP ;
 int __ipv6_isatap_ifid (int *,int ) ;

__attribute__((used)) static int addrconf_ifid_sit(u8 *eui, struct net_device *dev)
{
 if (dev->priv_flags & IFF_ISATAP)
  return __ipv6_isatap_ifid(eui, *(__be32 *)dev->dev_addr);
 return -1;
}
