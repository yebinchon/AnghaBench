
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int flags; TYPE_1__* header_ops; int addr_len; int broadcast; int dev_addr; } ;
struct neighbour {int nud_state; TYPE_2__* ops; int output; int ha; int type; int parms; struct net_device* dev; int primary_key; } ;
struct neigh_parms {int dummy; } ;
struct inet6_dev {struct neigh_parms* nd_parms; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int output; int connected_output; int queue_xmit; } ;
struct TYPE_5__ {scalar_t__ cache; } ;


 int EINVAL ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 void* NUD_NOARP ;
 int NUD_VALID ;
 int RTN_LOCAL ;
 int RTN_MULTICAST ;
 int RTN_UNICAST ;
 int __neigh_parms_put (int ) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int ipv6_addr_is_multicast (struct in6_addr*) ;
 int memcpy (int ,int ,int ) ;
 TYPE_2__ ndisc_direct_ops ;
 TYPE_2__ ndisc_generic_ops ;
 TYPE_2__ ndisc_hh_ops ;
 int ndisc_mc_map (struct in6_addr*,int ,struct net_device*,int) ;
 int neigh_parms_clone (struct neigh_parms*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ndisc_constructor(struct neighbour *neigh)
{
 struct in6_addr *addr = (struct in6_addr*)&neigh->primary_key;
 struct net_device *dev = neigh->dev;
 struct inet6_dev *in6_dev;
 struct neigh_parms *parms;
 int is_multicast = ipv6_addr_is_multicast(addr);

 rcu_read_lock();
 in6_dev = in6_dev_get(dev);
 if (in6_dev == ((void*)0)) {
  rcu_read_unlock();
  return -EINVAL;
 }

 parms = in6_dev->nd_parms;
 __neigh_parms_put(neigh->parms);
 neigh->parms = neigh_parms_clone(parms);
 rcu_read_unlock();

 neigh->type = is_multicast ? RTN_MULTICAST : RTN_UNICAST;
 if (!dev->header_ops) {
  neigh->nud_state = NUD_NOARP;
  neigh->ops = &ndisc_direct_ops;
  neigh->output = neigh->ops->queue_xmit;
 } else {
  if (is_multicast) {
   neigh->nud_state = NUD_NOARP;
   ndisc_mc_map(addr, neigh->ha, dev, 1);
  } else if (dev->flags&(IFF_NOARP|IFF_LOOPBACK)) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->dev_addr, dev->addr_len);
   if (dev->flags&IFF_LOOPBACK)
    neigh->type = RTN_LOCAL;
  } else if (dev->flags&IFF_POINTOPOINT) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->broadcast, dev->addr_len);
  }
  if (dev->header_ops->cache)
   neigh->ops = &ndisc_hh_ops;
  else
   neigh->ops = &ndisc_generic_ops;
  if (neigh->nud_state&NUD_VALID)
   neigh->output = neigh->ops->connected_output;
  else
   neigh->output = neigh->ops->output;
 }
 in6_dev_put(in6_dev);
 return 0;
}
