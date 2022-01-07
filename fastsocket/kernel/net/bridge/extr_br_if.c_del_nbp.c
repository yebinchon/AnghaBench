
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int br_port; int name; } ;
struct net_bridge_port {int rcu; int kobj; int list; struct net_device* dev; struct net_bridge* br; } ;
struct net_bridge {int lock; int ifobj; } ;


 int IFF_BRIDGE_PORT ;
 int KOBJ_REMOVE ;
 int RTM_DELLINK ;
 int br_del_vlans_from_port (struct net_bridge*,struct net_bridge_port*) ;
 int br_fdb_delete_by_port (struct net_bridge*,struct net_bridge_port*,int) ;
 int br_ifinfo_notify (int ,struct net_bridge_port*) ;
 int br_multicast_del_port (struct net_bridge_port*) ;
 int br_netpoll_disable (struct net_bridge_port*) ;
 int br_stp_disable_port (struct net_bridge_port*) ;
 int call_rcu (int *,int ) ;
 int destroy_nbp_rcu ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int kobject_del (int *) ;
 int kobject_uevent (int *,int ) ;
 int list_del_rcu (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_remove_link (int ,int ) ;

__attribute__((used)) static void del_nbp(struct net_bridge_port *p)
{
 struct net_bridge *br = p->br;
 struct net_device *dev = p->dev;

 sysfs_remove_link(br->ifobj, dev->name);

 dev_set_promiscuity(dev, -1);

 br_del_vlans_from_port(br, p);

 spin_lock_bh(&br->lock);
 br_stp_disable_port(p);
 spin_unlock_bh(&br->lock);

 br_ifinfo_notify(RTM_DELLINK, p);

 br_fdb_delete_by_port(br, p, 1);

 list_del_rcu(&p->list);

 rcu_assign_pointer(dev->br_port, ((void*)0));

 dev->priv_flags &= ~IFF_BRIDGE_PORT;

 br_multicast_del_port(p);

 kobject_uevent(&p->kobj, KOBJ_REMOVE);
 kobject_del(&p->kobj);

 br_netpoll_disable(p);

 call_rcu(&p->rcu, destroy_nbp_rcu);
}
