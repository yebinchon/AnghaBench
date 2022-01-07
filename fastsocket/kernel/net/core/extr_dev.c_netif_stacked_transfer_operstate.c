
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct net_device {scalar_t__ operstate; } const net_device ;


 scalar_t__ IF_OPER_DORMANT ;
 int netif_carrier_off (struct net_device const*) ;
 scalar_t__ netif_carrier_ok (struct net_device const*) ;
 int netif_carrier_on (struct net_device const*) ;
 int netif_dormant_off (struct net_device const*) ;
 int netif_dormant_on (struct net_device const*) ;

void netif_stacked_transfer_operstate(const struct net_device *rootdev,
     struct net_device *dev)
{
 if (rootdev->operstate == IF_OPER_DORMANT)
  netif_dormant_on(dev);
 else
  netif_dormant_off(dev);

 if (netif_carrier_ok(rootdev)) {
  if (!netif_carrier_ok(dev))
   netif_carrier_on(dev);
 } else {
  if (netif_carrier_ok(dev))
   netif_carrier_off(dev);
 }
}
