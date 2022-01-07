
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {scalar_t__ rx_crc_errors; int rx_over_errors; scalar_t__ rx_length_errors; int collisions; int multicast; int tx_errors; scalar_t__ rx_errors; int tx_packets; int rx_packets; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ crc_err; int rx_ov_flow; scalar_t__ length_err; int collisions; int multircv; int max_pkt_error; scalar_t__ other_errors; scalar_t__ code_violations; scalar_t__ alignment_err; int opackets; int ipackets; } ;
struct et131x_adapter {TYPE_1__ Stats; struct net_device_stats net_stats; } ;
typedef TYPE_1__ CE_STATS_t ;


 struct et131x_adapter* netdev_priv (struct net_device*) ;

struct net_device_stats *et131x_stats(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 struct net_device_stats *stats = &adapter->net_stats;
 CE_STATS_t *devstat = &adapter->Stats;

 stats->rx_packets = devstat->ipackets;
 stats->tx_packets = devstat->opackets;
 stats->rx_errors = devstat->length_err + devstat->alignment_err +
     devstat->crc_err + devstat->code_violations + devstat->other_errors;
 stats->tx_errors = devstat->max_pkt_error;
 stats->multicast = devstat->multircv;
 stats->collisions = devstat->collisions;

 stats->rx_length_errors = devstat->length_err;
 stats->rx_over_errors = devstat->rx_ov_flow;
 stats->rx_crc_errors = devstat->crc_err;
 return stats;
}
