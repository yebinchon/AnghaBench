
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct arpreq {int arp_netmask; int arp_pa; } ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 int arp_req_set_proxy (struct net*,struct net_device*,int ) ;
 int arp_tbl ;
 scalar_t__ htonl (int) ;
 int pneigh_delete (int *,struct net*,scalar_t__*,struct net_device*) ;

__attribute__((used)) static int arp_req_delete_public(struct net *net, struct arpreq *r,
  struct net_device *dev)
{
 __be32 ip = ((struct sockaddr_in *) &r->arp_pa)->sin_addr.s_addr;
 __be32 mask = ((struct sockaddr_in *)&r->arp_netmask)->sin_addr.s_addr;

 if (mask == htonl(0xFFFFFFFF))
  return pneigh_delete(&arp_tbl, net, &ip, dev);

 if (mask)
  return -EINVAL;

 return arp_req_set_proxy(net, dev, 0);
}
