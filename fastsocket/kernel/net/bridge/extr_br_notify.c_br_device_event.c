
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dev_addr; struct net_bridge_port* br_port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int lock; TYPE_1__* dev; } ;
struct TYPE_3__ {int flags; } ;


 int IFF_UP ;







 int NOTIFY_DONE ;
 int RTM_NEWLINK ;
 int br_del_if (struct net_bridge*,struct net_device*) ;
 int br_fdb_changeaddr (struct net_bridge_port*,int ) ;
 int br_features_recompute (struct net_bridge*) ;
 int br_ifinfo_notify (int ,struct net_bridge_port*) ;
 int br_min_mtu (struct net_bridge*) ;
 int br_port_carrier_check (struct net_bridge_port*) ;
 int br_stp_disable_port (struct net_bridge_port*) ;
 int br_stp_enable_port (struct net_bridge_port*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int dev_set_mtu (TYPE_1__*,int ) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_running (TYPE_1__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int br_device_event(struct notifier_block *unused, unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;
 struct net_bridge_port *p = dev->br_port;
 struct net_bridge *br;


 if (p == ((void*)0))
  return NOTIFY_DONE;

 br = p->br;

 switch (event) {
 case 132:
  dev_set_mtu(br->dev, br_min_mtu(br));
  break;

 case 133:
  spin_lock_bh(&br->lock);
  br_fdb_changeaddr(p, dev->dev_addr);
  br_stp_recalculate_bridge_id(br);
  spin_unlock_bh(&br->lock);
  break;

 case 134:
  br_port_carrier_check(p);
  break;

 case 130:
  if (netif_running(br->dev))
   br_features_recompute(br);
  break;

 case 131:
  spin_lock_bh(&br->lock);
  if (br->dev->flags & IFF_UP)
   br_stp_disable_port(p);
  spin_unlock_bh(&br->lock);
  break;

 case 128:
  if (netif_carrier_ok(dev) && (br->dev->flags & IFF_UP)) {
   spin_lock_bh(&br->lock);
   br_stp_enable_port(p);
   spin_unlock_bh(&br->lock);
  }
  break;

 case 129:
  br_del_if(br, dev);
  break;
 }


 if (event == 133 || event == 128 ||
     event == 134 || event == 131)
  br_ifinfo_notify(RTM_NEWLINK, p);

 return NOTIFY_DONE;
}
