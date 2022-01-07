
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct octeon_ethernet {scalar_t__ link_info; int queue; int port; } ;
struct net_device {int name; } ;
struct TYPE_5__ {scalar_t__ full_duplex; int speed; scalar_t__ link_up; } ;
struct TYPE_6__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_helper_link_info_t ;


 int DEBUGPRINT (char*,int ,...) ;
 TYPE_2__ cvmx_helper_link_autoconf (int ) ;
 TYPE_2__ cvmx_helper_link_get (int ) ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static void cvm_oct_xaui_poll(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvmx_helper_link_info_t link_info;

 link_info = cvmx_helper_link_get(priv->port);
 if (link_info.u64 == priv->link_info)
  return;

 link_info = cvmx_helper_link_autoconf(priv->port);
 priv->link_info = link_info.u64;


 if (link_info.s.link_up) {

  if (!netif_carrier_ok(dev))
   netif_carrier_on(dev);
  if (priv->queue != -1)
   DEBUGPRINT
       ("%s: %u Mbps %s duplex, port %2d, queue %2d\n",
        dev->name, link_info.s.speed,
        (link_info.s.full_duplex) ? "Full" : "Half",
        priv->port, priv->queue);
  else
   DEBUGPRINT("%s: %u Mbps %s duplex, port %2d, POW\n",
       dev->name, link_info.s.speed,
       (link_info.s.full_duplex) ? "Full" : "Half",
       priv->port);
 } else {
  if (netif_carrier_ok(dev))
   netif_carrier_off(dev);
  DEBUGPRINT("%s: Link down\n", dev->name);
 }
}
