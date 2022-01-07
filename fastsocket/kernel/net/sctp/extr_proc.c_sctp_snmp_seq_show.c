
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int entry; int * name; } ;


 TYPE_1__* sctp_snmp_list ;
 scalar_t__ sctp_statistics ;
 int seq_printf (struct seq_file*,char*,int *,int ) ;
 int snmp_fold_field (void**,int ) ;

__attribute__((used)) static int sctp_snmp_seq_show(struct seq_file *seq, void *v)
{
 int i;

 for (i = 0; sctp_snmp_list[i].name != ((void*)0); i++)
  seq_printf(seq, "%-32s\t%ld\n", sctp_snmp_list[i].name,
      snmp_fold_field((void **)sctp_statistics,
          sctp_snmp_list[i].entry));

 return 0;
}
