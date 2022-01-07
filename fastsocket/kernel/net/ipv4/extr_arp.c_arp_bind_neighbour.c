
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {scalar_t__ rt_gateway; } ;
struct net_device {int flags; scalar_t__ type; } ;
struct neighbour {int dummy; } ;
struct dst_entry {struct neighbour* neighbour; struct net_device* dev; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ ARPHRD_ATM ;
 int EINVAL ;
 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 scalar_t__ IS_ERR (struct neighbour*) ;
 int PTR_ERR (struct neighbour*) ;
 struct neighbour* __neigh_lookup_errno (int *,scalar_t__*,struct net_device*) ;
 int arp_tbl ;
 int * clip_tbl_hook ;

int arp_bind_neighbour(struct dst_entry *dst)
{
 struct net_device *dev = dst->dev;
 struct neighbour *n = dst->neighbour;

 if (dev == ((void*)0))
  return -EINVAL;
 if (n == ((void*)0)) {
  __be32 nexthop = ((struct rtable *)dst)->rt_gateway;
  if (dev->flags&(IFF_LOOPBACK|IFF_POINTOPOINT))
   nexthop = 0;
  n = __neigh_lookup_errno(



      &arp_tbl, &nexthop, dev);
  if (IS_ERR(n))
   return PTR_ERR(n);
  dst->neighbour = n;
 }
 return 0;
}
