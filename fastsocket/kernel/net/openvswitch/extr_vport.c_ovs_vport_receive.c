
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport_percpu_stats {int sync; int rx_bytes; int rx_packets; } ;
struct vport {int percpu_stats; } ;
struct sk_buff {scalar_t__ len; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct TYPE_2__ {struct ovs_key_ipv4_tunnel* tun_key; } ;


 TYPE_1__* OVS_CB (struct sk_buff*) ;
 int ovs_dp_process_received_packet (struct vport*,struct sk_buff*) ;
 struct vport_percpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void ovs_vport_receive(struct vport *vport, struct sk_buff *skb,
         struct ovs_key_ipv4_tunnel *tun_key)
{
 struct vport_percpu_stats *stats;

 stats = this_cpu_ptr(vport->percpu_stats);
 u64_stats_update_begin(&stats->sync);
 stats->rx_packets++;
 stats->rx_bytes += skb->len;
 u64_stats_update_end(&stats->sync);

 OVS_CB(skb)->tun_key = tun_key;
 ovs_dp_process_received_packet(vport, skb);
}
