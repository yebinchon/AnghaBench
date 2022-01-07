
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {scalar_t__ udplite_stats_in6; scalar_t__ udp_stats_in6; scalar_t__ icmpv6msg_statistics; scalar_t__ icmpv6_statistics; scalar_t__ ipv6_statistics; } ;
struct net {TYPE_1__ mib; } ;


 int snmp6_icmp6_list ;
 int snmp6_ipstats_list ;
 int snmp6_seq_show_icmpv6msg (struct seq_file*,void**) ;
 int snmp6_seq_show_item (struct seq_file*,void**,int ) ;
 int snmp6_udp6_list ;
 int snmp6_udplite6_list ;

__attribute__((used)) static int snmp6_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = (struct net *)seq->private;

 snmp6_seq_show_item(seq, (void **)net->mib.ipv6_statistics,
       snmp6_ipstats_list);
 snmp6_seq_show_item(seq, (void **)net->mib.icmpv6_statistics,
       snmp6_icmp6_list);
 snmp6_seq_show_icmpv6msg(seq, (void **)net->mib.icmpv6msg_statistics);
 snmp6_seq_show_item(seq, (void **)net->mib.udp_stats_in6,
       snmp6_udp6_list);
 snmp6_seq_show_item(seq, (void **)net->mib.udplite_stats_in6,
       snmp6_udplite6_list);
 return 0;
}
