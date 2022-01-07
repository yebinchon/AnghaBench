
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int sa_data; int sa_family; } ;
struct arpreq {int arp_flags; TYPE_1__ arp_ha; int arp_netmask; int arp_pa; } ;
typedef scalar_t__ __be32 ;


 int ATF_COM ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int arp_req_set_proxy (struct net*,struct net_device*,int) ;
 int arp_tbl ;
 struct net_device* dev_getbyhwaddr (struct net*,int ,int ) ;
 scalar_t__ htonl (int) ;
 int * pneigh_lookup (int *,struct net*,scalar_t__*,struct net_device*,int) ;

__attribute__((used)) static int arp_req_set_public(struct net *net, struct arpreq *r,
  struct net_device *dev)
{
 __be32 ip = ((struct sockaddr_in *)&r->arp_pa)->sin_addr.s_addr;
 __be32 mask = ((struct sockaddr_in *)&r->arp_netmask)->sin_addr.s_addr;

 if (mask && mask != htonl(0xFFFFFFFF))
  return -EINVAL;
 if (!dev && (r->arp_flags & ATF_COM)) {
  dev = dev_getbyhwaddr(net, r->arp_ha.sa_family,
    r->arp_ha.sa_data);
  if (!dev)
   return -ENODEV;
 }
 if (mask) {
  if (pneigh_lookup(&arp_tbl, net, &ip, dev, 1) == ((void*)0))
   return -ENOBUFS;
  return 0;
 }

 return arp_req_set_proxy(net, dev, 1);
}
