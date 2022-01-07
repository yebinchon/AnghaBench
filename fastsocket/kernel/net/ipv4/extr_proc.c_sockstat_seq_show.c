
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int tw_count; } ;


 int atomic_read (int *) ;
 int ip_frag_mem (struct net*) ;
 int ip_frag_nqueues (struct net*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int percpu_counter_sum_positive (int *) ;
 int raw_prot ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int sock_prot_inuse_get (struct net*,int *) ;
 int socket_seq_show (struct seq_file*) ;
 TYPE_1__ tcp_death_row ;
 int tcp_memory_allocated ;
 int tcp_orphan_count ;
 int tcp_prot ;
 int tcp_sockets_allocated ;
 int udp_memory_allocated ;
 int udp_prot ;
 int udplite_prot ;

__attribute__((used)) static int sockstat_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = seq->private;
 int orphans, sockets;

 local_bh_disable();
 orphans = percpu_counter_sum_positive(&tcp_orphan_count);
 sockets = percpu_counter_sum_positive(&tcp_sockets_allocated);
 local_bh_enable();

 socket_seq_show(seq);
 seq_printf(seq, "TCP: inuse %d orphan %d tw %d alloc %d mem %d\n",
     sock_prot_inuse_get(net, &tcp_prot), orphans,
     tcp_death_row.tw_count, sockets,
     atomic_read(&tcp_memory_allocated));
 seq_printf(seq, "UDP: inuse %d mem %d\n",
     sock_prot_inuse_get(net, &udp_prot),
     atomic_read(&udp_memory_allocated));
 seq_printf(seq, "UDPLITE: inuse %d\n",
     sock_prot_inuse_get(net, &udplite_prot));
 seq_printf(seq, "RAW: inuse %d\n",
     sock_prot_inuse_get(net, &raw_prot));
 seq_printf(seq, "FRAG: inuse %d memory %d\n",
   ip_frag_nqueues(net), ip_frag_mem(net));
 return 0;
}
