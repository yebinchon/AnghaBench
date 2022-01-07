
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int kobj; } ;
struct net_device {int flags; scalar_t__ type; scalar_t__ addr_len; int priv_flags; int * br_port; int dev_addr; TYPE_2__ dev; TYPE_1__* netdev_ops; } ;
struct net_bridge_port {int kobj; TYPE_3__* dev; int list; } ;
struct net_bridge {int ifobj; TYPE_5__* dev; int lock; int port_list; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int ext_priv_flags; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_6__ {scalar_t__ ndo_start_xmit; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EBUSY ;
 int EINVAL ;
 int ELOOP ;
 int EOPNOTSUPP ;
 scalar_t__ ETH_ALEN ;
 int IFF_BRIDGE_PORT ;
 int IFF_DONT_BRIDGE ;
 int IFF_LOOPBACK ;
 int IFF_UP ;
 scalar_t__ IS_ERR (struct net_bridge_port*) ;
 int KOBJ_ADD ;
 int NETDEV_JOIN ;
 int PTR_ERR (struct net_bridge_port*) ;
 int RTM_NEWLINK ;
 int SYSFS_BRIDGE_PORT_ATTR ;
 int br_add_vlans_to_port (struct net_bridge*,struct net_bridge_port*) ;
 scalar_t__ br_dev_xmit ;
 int br_fdb_delete_by_port (struct net_bridge*,struct net_bridge_port*,int) ;
 int br_fdb_insert (struct net_bridge*,struct net_bridge_port*,int ) ;
 int br_features_recompute (struct net_bridge*) ;
 int br_ifinfo_notify (int ,struct net_bridge_port*) ;
 int br_min_mtu (struct net_bridge*) ;
 int br_netpoll_enable (struct net_bridge_port*) ;
 scalar_t__ br_netpoll_info (struct net_bridge*) ;
 int br_stp_enable_port (struct net_bridge_port*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int br_sysfs_addif (struct net_bridge_port*) ;
 int brport_ktype ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_disable_lro (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_set_mtu (TYPE_5__*,int ) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int kfree (struct net_bridge_port*) ;
 int kobject_init_and_add (int *,int *,int *,int ) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 int list_add_rcu (int *,int *) ;
 TYPE_4__* netdev_extended (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 struct net_bridge_port* new_nbp (struct net_bridge*,struct net_device*) ;
 int rcu_assign_pointer (int *,struct net_bridge_port*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sysfs_remove_link (int ,int ) ;

int br_add_if(struct net_bridge *br, struct net_device *dev)
{
 struct net_bridge_port *p;
 int err = 0;


 if ((dev->flags & IFF_LOOPBACK) ||
     dev->type != ARPHRD_ETHER || dev->addr_len != ETH_ALEN)
  return -EINVAL;


 if (dev->netdev_ops->ndo_start_xmit == br_dev_xmit)
  return -ELOOP;


 if (dev->br_port != ((void*)0))
  return -EBUSY;


 if (netdev_extended(dev)->ext_priv_flags & IFF_DONT_BRIDGE)
  return -EOPNOTSUPP;

 p = new_nbp(br, dev);
 if (IS_ERR(p))
  return PTR_ERR(p);

 err = dev_set_promiscuity(dev, 1);
 if (err)
  goto put_back;

 call_netdevice_notifiers(NETDEV_JOIN, dev);

 err = kobject_init_and_add(&p->kobj, &brport_ktype, &(dev->dev.kobj),
       SYSFS_BRIDGE_PORT_ATTR);
 if (err)
  goto err0;

 err = br_fdb_insert(br, p, dev->dev_addr);
 if (err)
  goto err1;

 err = br_sysfs_addif(p);
 if (err)
  goto err2;

 if (br_netpoll_info(br) && ((err = br_netpoll_enable(p))))
  goto err3;

 rcu_assign_pointer(dev->br_port, p);

 dev_disable_lro(dev);

 dev->priv_flags |= IFF_BRIDGE_PORT;

 list_add_rcu(&p->list, &br->port_list);

 br_add_vlans_to_port(br, p);

 br_features_recompute(br);

 spin_lock_bh(&br->lock);
 br_stp_recalculate_bridge_id(br);

 if ((dev->flags & IFF_UP) && netif_carrier_ok(dev) &&
     (br->dev->flags & IFF_UP))
  br_stp_enable_port(p);
 spin_unlock_bh(&br->lock);

 br_ifinfo_notify(RTM_NEWLINK, p);

 dev_set_mtu(br->dev, br_min_mtu(br));

 kobject_uevent(&p->kobj, KOBJ_ADD);

 return 0;
err3:
 sysfs_remove_link(br->ifobj, p->dev->name);
err2:
 br_fdb_delete_by_port(br, p, 1);
err1:
 kobject_put(&p->kobj);
 p = ((void*)0);
err0:
 dev_set_promiscuity(dev, -1);
put_back:
 dev_put(dev);
 kfree(p);
 return err;
}
