
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {scalar_t__ (* ndo_neigh_setup ) (struct net_device*,struct neigh_parms*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct neigh_parms* next; } ;
struct neigh_table {int lock; TYPE_1__ parms; } ;
struct neigh_parms {struct neigh_parms* next; int * sysctl_table; int net; struct net_device* dev; int base_reachable_time; int reachable_time; int refcnt; struct neigh_table* tbl; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int dev_hold (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int hold_net (struct net*) ;
 int kfree (struct neigh_parms*) ;
 struct neigh_parms* kmemdup (struct neigh_parms*,int,int ) ;
 struct neigh_parms* lookup_neigh_parms (struct neigh_table*,struct net*,int ) ;
 int neigh_rand_reach_time (int ) ;
 scalar_t__ stub1 (struct net_device*,struct neigh_parms*) ;
 int write_lock_bh (int *) ;
 int write_pnet (int *,int ) ;
 int write_unlock_bh (int *) ;

struct neigh_parms *neigh_parms_alloc(struct net_device *dev,
          struct neigh_table *tbl)
{
 struct neigh_parms *p, *ref;
 struct net *net = dev_net(dev);
 const struct net_device_ops *ops = dev->netdev_ops;

 ref = lookup_neigh_parms(tbl, net, 0);
 if (!ref)
  return ((void*)0);

 p = kmemdup(ref, sizeof(*p), GFP_KERNEL);
 if (p) {
  p->tbl = tbl;
  atomic_set(&p->refcnt, 1);
  p->reachable_time =
    neigh_rand_reach_time(p->base_reachable_time);

  if (ops->ndo_neigh_setup && ops->ndo_neigh_setup(dev, p)) {
   kfree(p);
   return ((void*)0);
  }

  dev_hold(dev);
  p->dev = dev;
  write_pnet(&p->net, hold_net(net));
  p->sysctl_table = ((void*)0);
  write_lock_bh(&tbl->lock);
  p->next = tbl->parms.next;
  tbl->parms.next = p;
  write_unlock_bh(&tbl->lock);
 }
 return p;
}
