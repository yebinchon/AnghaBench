
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int type; int flags; TYPE_1__* header_ops; int addr_len; int broadcast; int dev_addr; } ;
struct neighbour {int nud_state; TYPE_2__* ops; int output; int ha; int type; int parms; struct net_device* dev; scalar_t__ primary_key; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
typedef int __be32 ;
struct TYPE_7__ {int output; int connected_output; int queue_xmit; } ;
struct TYPE_6__ {scalar_t__ cache; } ;





 int EINVAL ;
 int IFF_LOOPBACK ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 void* NUD_NOARP ;
 int NUD_VALID ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int __neigh_parms_put (int ) ;
 TYPE_2__ arp_broken_ops ;
 TYPE_2__ arp_direct_ops ;
 TYPE_2__ arp_generic_ops ;
 TYPE_2__ arp_hh_ops ;
 int arp_mc_map (int ,int ,struct net_device*,int) ;
 int dev_net (struct net_device*) ;
 int inet_addr_type (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int neigh_parms_clone (struct neigh_parms*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int arp_constructor(struct neighbour *neigh)
{
 __be32 addr = *(__be32*)neigh->primary_key;
 struct net_device *dev = neigh->dev;
 struct in_device *in_dev;
 struct neigh_parms *parms;

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);
 if (in_dev == ((void*)0)) {
  rcu_read_unlock();
  return -EINVAL;
 }

 neigh->type = inet_addr_type(dev_net(dev), addr);

 parms = in_dev->arp_parms;
 __neigh_parms_put(neigh->parms);
 neigh->parms = neigh_parms_clone(parms);
 rcu_read_unlock();

 if (!dev->header_ops) {
  neigh->nud_state = NUD_NOARP;
  neigh->ops = &arp_direct_ops;
  neigh->output = neigh->ops->queue_xmit;
 } else {
  switch (dev->type) {
  default:
   break;
  case 128:
  ;}

  if (neigh->type == RTN_MULTICAST) {
   neigh->nud_state = NUD_NOARP;
   arp_mc_map(addr, neigh->ha, dev, 1);
  } else if (dev->flags&(IFF_NOARP|IFF_LOOPBACK)) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->dev_addr, dev->addr_len);
  } else if (neigh->type == RTN_BROADCAST || dev->flags&IFF_POINTOPOINT) {
   neigh->nud_state = NUD_NOARP;
   memcpy(neigh->ha, dev->broadcast, dev->addr_len);
  }

  if (dev->header_ops->cache)
   neigh->ops = &arp_hh_ops;
  else
   neigh->ops = &arp_generic_ops;

  if (neigh->nud_state&NUD_VALID)
   neigh->output = neigh->ops->connected_output;
  else
   neigh->output = neigh->ops->output;
 }
 return 0;
}
