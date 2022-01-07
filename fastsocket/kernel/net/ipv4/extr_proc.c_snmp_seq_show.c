
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_5__ {scalar_t__ udplite_statistics; scalar_t__ udp_statistics; scalar_t__ tcp_statistics; scalar_t__ ip_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_8__ {scalar_t__ entry; int * name; } ;
struct TYPE_7__ {scalar_t__ entry; int * name; } ;
struct TYPE_6__ {scalar_t__ entry; int * name; } ;


 int FORWARDING ;
 scalar_t__ IPV4_DEVCONF_ALL (struct net*,int ) ;
 scalar_t__ TCP_MIB_MAXCONN ;
 int icmp_put (struct seq_file*) ;
 int icmpmsg_put (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 TYPE_4__* snmp4_ipstats_list ;
 TYPE_3__* snmp4_tcp_list ;
 TYPE_2__* snmp4_udp_list ;
 int * snmp_fold_field (void**,scalar_t__) ;
 int sysctl_ip_default_ttl ;

__attribute__((used)) static int snmp_seq_show(struct seq_file *seq, void *v)
{
 int i;
 struct net *net = seq->private;

 seq_puts(seq, "Ip: Forwarding DefaultTTL");

 for (i = 0; snmp4_ipstats_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_ipstats_list[i].name);

 seq_printf(seq, "\nIp: %d %d",
     IPV4_DEVCONF_ALL(net, FORWARDING) ? 1 : 2,
     sysctl_ip_default_ttl);

 for (i = 0; snmp4_ipstats_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %lu",
      snmp_fold_field((void **)net->mib.ip_statistics,
        snmp4_ipstats_list[i].entry));

 icmp_put(seq);
 icmpmsg_put(seq);

 seq_puts(seq, "\nTcp:");
 for (i = 0; snmp4_tcp_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_tcp_list[i].name);

 seq_puts(seq, "\nTcp:");
 for (i = 0; snmp4_tcp_list[i].name != ((void*)0); i++) {

  if (snmp4_tcp_list[i].entry == TCP_MIB_MAXCONN)
   seq_printf(seq, " %ld",
       snmp_fold_field((void **)net->mib.tcp_statistics,
         snmp4_tcp_list[i].entry));
  else
   seq_printf(seq, " %lu",
       snmp_fold_field((void **)net->mib.tcp_statistics,
         snmp4_tcp_list[i].entry));
 }

 seq_puts(seq, "\nUdp:");
 for (i = 0; snmp4_udp_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_udp_list[i].name);

 seq_puts(seq, "\nUdp:");
 for (i = 0; snmp4_udp_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %lu",
      snmp_fold_field((void **)net->mib.udp_statistics,
        snmp4_udp_list[i].entry));


 seq_puts(seq, "\nUdpLite:");
 for (i = 0; snmp4_udp_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_udp_list[i].name);

 seq_puts(seq, "\nUdpLite:");
 for (i = 0; snmp4_udp_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %lu",
      snmp_fold_field((void **)net->mib.udplite_statistics,
        snmp4_udp_list[i].entry));

 seq_putc(seq, '\n');
 return 0;
}
