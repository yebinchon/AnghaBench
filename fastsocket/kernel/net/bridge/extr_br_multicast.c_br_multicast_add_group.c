
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct br_ip {int dummy; } ;
struct net_bridge_port_group {int query_timer; int timer; int mglist; struct net_bridge_port_group* next; struct net_bridge_port* port; struct br_ip addr; } ;
struct net_bridge_port {scalar_t__ state; int mglist; } ;
struct net_bridge_mdb_entry {int mglist; struct net_bridge_port_group* ports; } ;
struct net_bridge {int multicast_lock; scalar_t__ multicast_membership_interval; int dev; } ;


 scalar_t__ BR_STATE_DISABLED ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct net_bridge_mdb_entry*) ;
 int PTR_ERR (struct net_bridge_mdb_entry*) ;
 struct net_bridge_mdb_entry* br_multicast_new_group (struct net_bridge*,struct net_bridge_port*,struct br_ip*) ;
 int br_multicast_port_group_expired ;
 int br_multicast_port_group_query_expired ;
 int hlist_add_head (int *,int *) ;
 scalar_t__ jiffies ;
 struct net_bridge_port_group* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int netif_running (int ) ;
 int rcu_assign_pointer (struct net_bridge_port_group*,struct net_bridge_port_group*) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int br_multicast_add_group(struct net_bridge *br,
      struct net_bridge_port *port,
      struct br_ip *group)
{
 struct net_bridge_mdb_entry *mp;
 struct net_bridge_port_group *p;
 struct net_bridge_port_group **pp;
 int err;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev) ||
     (port && port->state == BR_STATE_DISABLED))
  goto out;

 mp = br_multicast_new_group(br, port, group);
 err = PTR_ERR(mp);
 if (unlikely(IS_ERR(mp) || !mp))
  goto err;

 if (!port) {
  mp->mglist = 1;
  goto out;
 }

 for (pp = &mp->ports; (p = *pp); pp = &p->next) {
  if (p->port == port) {

   mod_timer(&p->timer,
      jiffies + br->multicast_membership_interval);
   goto out;
  }
  if ((unsigned long)p->port < (unsigned long)port)
   break;
 }

 p = kzalloc(sizeof(*p), GFP_ATOMIC);
 err = -ENOMEM;
 if (unlikely(!p))
  goto err;

 p->addr = *group;
 p->port = port;
 p->next = *pp;
 hlist_add_head(&p->mglist, &port->mglist);
 setup_timer(&p->timer, br_multicast_port_group_expired,
      (unsigned long)p);
 setup_timer(&p->query_timer, br_multicast_port_group_query_expired,
      (unsigned long)p);

 rcu_assign_pointer(*pp, p);

out:
 err = 0;

err:
 spin_unlock(&br->multicast_lock);
 return err;
}
