
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport_percpu_stats {int tx_bytes; int sync; int tx_packets; } ;
struct vport {int percpu_stats; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* send ) (struct vport*,struct sk_buff*) ;} ;


 int VPORT_E_TX_DROPPED ;
 int VPORT_E_TX_ERROR ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int ovs_vport_record_error (struct vport*,int ) ;
 int stub1 (struct vport*,struct sk_buff*) ;
 struct vport_percpu_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

int ovs_vport_send(struct vport *vport, struct sk_buff *skb)
{
 int sent = vport->ops->send(vport, skb);

 if (likely(sent > 0)) {
  struct vport_percpu_stats *stats;

  stats = this_cpu_ptr(vport->percpu_stats);

  u64_stats_update_begin(&stats->sync);
  stats->tx_packets++;
  stats->tx_bytes += sent;
  u64_stats_update_end(&stats->sync);
 } else if (sent < 0) {
  ovs_vport_record_error(vport, VPORT_E_TX_ERROR);
  kfree_skb(skb);
 } else
  ovs_vport_record_error(vport, VPORT_E_TX_DROPPED);

 return sent;
}
