
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct neighbour {int nud_state; TYPE_1__* ops; int output; int parms; int type; struct net_device* dev; } ;
struct neigh_parms {int dummy; } ;
struct in_device {struct neigh_parms* arp_parms; } ;
struct atmarp_entry {scalar_t__ expires; int * vccs; struct neighbour* neigh; int ip; } ;
struct TYPE_2__ {int output; int connected_output; } ;


 int EINVAL ;
 struct atmarp_entry* NEIGH2ENTRY (struct neighbour*) ;
 int NUD_VALID ;
 int RTN_UNICAST ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int __neigh_parms_put (int ) ;
 TYPE_1__ clip_neigh_ops ;
 int inet_addr_type (int *,int ) ;
 int init_net ;
 scalar_t__ jiffies ;
 int neigh_parms_clone (struct neigh_parms*) ;
 int pr_debug (char*,struct neighbour*,struct atmarp_entry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int clip_constructor(struct neighbour *neigh)
{
 struct atmarp_entry *entry = NEIGH2ENTRY(neigh);
 struct net_device *dev = neigh->dev;
 struct in_device *in_dev;
 struct neigh_parms *parms;

 pr_debug("clip_constructor (neigh %p, entry %p)\n", neigh, entry);
 neigh->type = inet_addr_type(&init_net, entry->ip);
 if (neigh->type != RTN_UNICAST)
  return -EINVAL;

 rcu_read_lock();
 in_dev = __in_dev_get_rcu(dev);
 if (!in_dev) {
  rcu_read_unlock();
  return -EINVAL;
 }

 parms = in_dev->arp_parms;
 __neigh_parms_put(neigh->parms);
 neigh->parms = neigh_parms_clone(parms);
 rcu_read_unlock();

 neigh->ops = &clip_neigh_ops;
 neigh->output = neigh->nud_state & NUD_VALID ?
     neigh->ops->connected_output : neigh->ops->output;
 entry->neigh = neigh;
 entry->vccs = ((void*)0);
 entry->expires = jiffies - 1;
 return 0;
}
