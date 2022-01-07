
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct net* private; } ;
struct net {int dummy; } ;


 int ip6_frag_mem (struct net*) ;
 int ip6_frag_nqueues (struct net*) ;
 int rawv6_prot ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int sock_prot_inuse_get (struct net*,int *) ;
 int tcpv6_prot ;
 int udplitev6_prot ;
 int udpv6_prot ;

__attribute__((used)) static int sockstat6_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = seq->private;

 seq_printf(seq, "TCP6: inuse %d\n",
         sock_prot_inuse_get(net, &tcpv6_prot));
 seq_printf(seq, "UDP6: inuse %d\n",
         sock_prot_inuse_get(net, &udpv6_prot));
 seq_printf(seq, "UDPLITE6: inuse %d\n",
   sock_prot_inuse_get(net, &udplitev6_prot));
 seq_printf(seq, "RAW6: inuse %d\n",
         sock_prot_inuse_get(net, &rawv6_prot));
 seq_printf(seq, "FRAG6: inuse %d memory %d\n",
         ip6_frag_nqueues(net), ip6_frag_mem(net));
 return 0;
}
