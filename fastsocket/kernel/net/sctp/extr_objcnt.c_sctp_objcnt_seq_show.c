
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int counter; int label; } ;


 int atomic_read (int ) ;
 TYPE_1__* sctp_dbg_objcnt ;
 int seq_printf (struct seq_file*,char*,int,char*,...) ;

__attribute__((used)) static int sctp_objcnt_seq_show(struct seq_file *seq, void *v)
{
 int i, len;

 i = (int)*(loff_t *)v;
 seq_printf(seq, "%s: %d%n", sctp_dbg_objcnt[i].label,
    atomic_read(sctp_dbg_objcnt[i].counter), &len);
 seq_printf(seq, "%*s\n", 127 - len, "");
 return 0;
}
