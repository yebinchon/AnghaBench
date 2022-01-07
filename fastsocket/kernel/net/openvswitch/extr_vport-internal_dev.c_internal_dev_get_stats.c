
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct ovs_vport_stats {int rx_dropped; int tx_dropped; int rx_errors; int tx_errors; int rx_bytes; int tx_bytes; int rx_packets; int tx_packets; } ;
struct net_device_stats {int tx_dropped; int rx_dropped; int tx_errors; int rx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device {struct net_device_stats stats; } ;


 struct vport* ovs_internal_dev_get_vport (struct net_device*) ;
 int ovs_vport_get_stats (struct vport*,struct ovs_vport_stats*) ;

__attribute__((used)) static struct net_device_stats *internal_dev_get_stats(struct net_device *netdev)
{
 struct vport *vport = ovs_internal_dev_get_vport(netdev);
 struct ovs_vport_stats vport_stats;
 struct net_device_stats *stats = &netdev->stats;

 ovs_vport_get_stats(vport, &vport_stats);



 stats->rx_packets = vport_stats.tx_packets;
 stats->tx_packets = vport_stats.rx_packets;
 stats->rx_bytes = vport_stats.tx_bytes;
 stats->tx_bytes = vport_stats.rx_bytes;
 stats->rx_errors = vport_stats.tx_errors;
 stats->tx_errors = vport_stats.rx_errors;
 stats->rx_dropped = vport_stats.tx_dropped;
 stats->tx_dropped = vport_stats.rx_dropped;

 return stats;
}
