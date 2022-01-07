
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct vport {int upcall_pid; int port_no; struct datapath* dp; } ;
struct sw_flow_key {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dp_upcall_info {int pid; int * userdata; struct sw_flow_key* key; int cmd; } ;
struct dp_stats_percpu {int sync; int n_hit; int n_missed; } ;
struct datapath {int table; int stats_percpu; } ;
struct TYPE_2__ {struct sw_flow* flow; } ;


 TYPE_1__* OVS_CB (struct sk_buff*) ;
 int OVS_PACKET_CMD_MISS ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int ovs_dp_upcall (struct datapath*,struct sk_buff*,struct dp_upcall_info*) ;
 int ovs_execute_actions (struct datapath*,struct sk_buff*) ;
 int ovs_flow_extract (struct sk_buff*,int ,struct sw_flow_key*,int*) ;
 struct sw_flow* ovs_flow_tbl_lookup (int ,struct sw_flow_key*,int) ;
 int ovs_flow_used (struct sw_flow*,struct sk_buff*) ;
 int rcu_dereference (int ) ;
 struct dp_stats_percpu* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

void ovs_dp_process_received_packet(struct vport *p, struct sk_buff *skb)
{
 struct datapath *dp = p->dp;
 struct sw_flow *flow;
 struct dp_stats_percpu *stats;
 struct sw_flow_key key;
 u64 *stats_counter;
 int error;
 int key_len;

 stats = this_cpu_ptr(dp->stats_percpu);


 error = ovs_flow_extract(skb, p->port_no, &key, &key_len);
 if (unlikely(error)) {
  kfree_skb(skb);
  return;
 }


 flow = ovs_flow_tbl_lookup(rcu_dereference(dp->table), &key, key_len);
 if (unlikely(!flow)) {
  struct dp_upcall_info upcall;

  upcall.cmd = OVS_PACKET_CMD_MISS;
  upcall.key = &key;
  upcall.userdata = ((void*)0);
  upcall.pid = p->upcall_pid;
  ovs_dp_upcall(dp, skb, &upcall);
  consume_skb(skb);
  stats_counter = &stats->n_missed;
  goto out;
 }

 OVS_CB(skb)->flow = flow;

 stats_counter = &stats->n_hit;
 ovs_flow_used(OVS_CB(skb)->flow, skb);
 ovs_execute_actions(dp, skb);

out:

 u64_stats_update_begin(&stats->sync);
 (*stats_counter)++;
 u64_stats_update_end(&stats->sync);
}
