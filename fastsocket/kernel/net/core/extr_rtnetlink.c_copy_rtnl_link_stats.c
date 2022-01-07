
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats {int tx_compressed; int rx_compressed; int tx_window_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; int rx_missed_errors; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; int rx_length_errors; int collisions; int multicast; int tx_dropped; int rx_dropped; int tx_errors; int rx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;
struct net_device_stats {int tx_compressed; int rx_compressed; int tx_window_errors; int tx_heartbeat_errors; int tx_fifo_errors; int tx_carrier_errors; int tx_aborted_errors; int rx_missed_errors; int rx_fifo_errors; int rx_frame_errors; int rx_crc_errors; int rx_over_errors; int rx_length_errors; int collisions; int multicast; int tx_dropped; int rx_dropped; int tx_errors; int rx_errors; int tx_bytes; int rx_bytes; int tx_packets; int rx_packets; } ;



__attribute__((used)) static void copy_rtnl_link_stats(struct rtnl_link_stats *a,
     const struct net_device_stats *b)
{
 a->rx_packets = b->rx_packets;
 a->tx_packets = b->tx_packets;
 a->rx_bytes = b->rx_bytes;
 a->tx_bytes = b->tx_bytes;
 a->rx_errors = b->rx_errors;
 a->tx_errors = b->tx_errors;
 a->rx_dropped = b->rx_dropped;
 a->tx_dropped = b->tx_dropped;

 a->multicast = b->multicast;
 a->collisions = b->collisions;

 a->rx_length_errors = b->rx_length_errors;
 a->rx_over_errors = b->rx_over_errors;
 a->rx_crc_errors = b->rx_crc_errors;
 a->rx_frame_errors = b->rx_frame_errors;
 a->rx_fifo_errors = b->rx_fifo_errors;
 a->rx_missed_errors = b->rx_missed_errors;

 a->tx_aborted_errors = b->tx_aborted_errors;
 a->tx_carrier_errors = b->tx_carrier_errors;
 a->tx_fifo_errors = b->tx_fifo_errors;
 a->tx_heartbeat_errors = b->tx_heartbeat_errors;
 a->tx_window_errors = b->tx_window_errors;

 a->rx_compressed = b->rx_compressed;
 a->tx_compressed = b->tx_compressed;
}
