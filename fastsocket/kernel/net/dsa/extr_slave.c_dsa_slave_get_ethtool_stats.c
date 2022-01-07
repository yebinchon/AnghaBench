
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct dsa_switch {TYPE_3__* drv; } ;
struct dsa_slave_priv {int port; TYPE_2__* dev; struct dsa_switch* parent; } ;
struct TYPE_6__ {int (* get_ethtool_stats ) (struct dsa_switch*,int ,int *) ;} ;
struct TYPE_4__ {int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 struct dsa_slave_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct dsa_switch*,int ,int *) ;

__attribute__((used)) static void dsa_slave_get_ethtool_stats(struct net_device *dev,
     struct ethtool_stats *stats,
     uint64_t *data)
{
 struct dsa_slave_priv *p = netdev_priv(dev);
 struct dsa_switch *ds = p->parent;

 data[0] = p->dev->stats.tx_packets;
 data[1] = p->dev->stats.tx_bytes;
 data[2] = p->dev->stats.rx_packets;
 data[3] = p->dev->stats.rx_bytes;
 if (ds->drv->get_ethtool_stats != ((void*)0))
  ds->drv->get_ethtool_stats(ds, p->port, data + 4);
}
