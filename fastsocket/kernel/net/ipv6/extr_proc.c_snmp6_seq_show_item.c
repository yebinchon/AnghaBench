
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_mib {int entry; scalar_t__ name; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,scalar_t__,int ) ;
 int snmp_fold_field (void**,int ) ;

__attribute__((used)) static inline void
snmp6_seq_show_item(struct seq_file *seq, void **mib, struct snmp_mib *itemlist)
{
 int i;
 for (i=0; itemlist[i].name; i++)
  seq_printf(seq, "%-32s\t%lu\n", itemlist[i].name,
      snmp_fold_field(mib, itemlist[i].entry));
}
