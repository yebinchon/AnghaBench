
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int mtu; } ;
struct eth_bearer {TYPE_1__* bearer; struct net_device* dev; } ;
struct TYPE_2__ {int name; int mtu; } ;


 size_t MAX_ETH_BEARERS ;







 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int dev_net (struct net_device*) ;
 struct eth_bearer* eth_bearers ;
 int init_net ;
 int net_eq (int ,int *) ;
 int netif_carrier_ok (struct net_device*) ;
 int tipc_block_bearer (int ) ;
 int tipc_continue (TYPE_1__*) ;
 int tipc_disable_bearer (int ) ;

__attribute__((used)) static int recv_notification(struct notifier_block *nb, unsigned long evt,
        void *dv)
{
 struct net_device *dev = (struct net_device *)dv;
 struct eth_bearer *eb_ptr = &eth_bearers[0];
 struct eth_bearer *stop = &eth_bearers[MAX_ETH_BEARERS];

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 while ((eb_ptr->dev != dev)) {
  if (++eb_ptr == stop)
   return NOTIFY_DONE;
 }
 if (!eb_ptr->bearer)
  return NOTIFY_DONE;

 eb_ptr->bearer->mtu = dev->mtu;

 switch (evt) {
 case 134:
  if (netif_carrier_ok(dev))
   tipc_continue(eb_ptr->bearer);
  else
   tipc_block_bearer(eb_ptr->bearer->name);
  break;
 case 128:
  tipc_continue(eb_ptr->bearer);
  break;
 case 130:
  tipc_block_bearer(eb_ptr->bearer->name);
  break;
 case 132:
 case 133:
  tipc_block_bearer(eb_ptr->bearer->name);
  tipc_continue(eb_ptr->bearer);
  break;
 case 129:
 case 131:
  tipc_disable_bearer(eb_ptr->bearer->name);
  break;
 }
 return NOTIFY_OK;
}
