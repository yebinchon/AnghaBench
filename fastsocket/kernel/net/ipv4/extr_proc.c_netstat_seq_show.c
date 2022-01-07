
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_4__ {scalar_t__ ip_statistics; scalar_t__ net_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_6__ {int entry; int * name; } ;
struct TYPE_5__ {int entry; int * name; } ;


 int seq_printf (struct seq_file*,char*,int *) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 TYPE_3__* snmp4_ipextstats_list ;
 TYPE_2__* snmp4_net_list ;
 int * snmp_fold_field (void**,int ) ;

__attribute__((used)) static int netstat_seq_show(struct seq_file *seq, void *v)
{
 int i;
 struct net *net = seq->private;

 seq_puts(seq, "TcpExt:");
 for (i = 0; snmp4_net_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_net_list[i].name);

 seq_puts(seq, "\nTcpExt:");
 for (i = 0; snmp4_net_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %lu",
      snmp_fold_field((void **)net->mib.net_statistics,
        snmp4_net_list[i].entry));

 seq_puts(seq, "\nIpExt:");
 for (i = 0; snmp4_ipextstats_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %s", snmp4_ipextstats_list[i].name);

 seq_puts(seq, "\nIpExt:");
 for (i = 0; snmp4_ipextstats_list[i].name != ((void*)0); i++)
  seq_printf(seq, " %lu",
      snmp_fold_field((void **)net->mib.ip_statistics,
        snmp4_ipextstats_list[i].entry));

 seq_putc(seq, '\n');
 return 0;
}
