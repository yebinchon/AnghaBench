
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_2__ {scalar_t__ icmpmsg_statistics; } ;
struct net {TYPE_1__ mib; } ;


 int ICMPMSG_MIB_MAX ;
 int PERLINE ;
 int icmpmsg_put_line (struct seq_file*,unsigned long*,unsigned short*,int) ;
 unsigned long snmp_fold_field (void**,int) ;

__attribute__((used)) static void icmpmsg_put(struct seq_file *seq)
{


 int i, count;
 unsigned short type[16];
 unsigned long vals[16], val;
 struct net *net = seq->private;

 count = 0;
 for (i = 0; i < ICMPMSG_MIB_MAX; i++) {
  val = snmp_fold_field((void **) net->mib.icmpmsg_statistics, i);
  if (val) {
   type[count] = i;
   vals[count++] = val;
  }
  if (count == 16) {
   icmpmsg_put_line(seq, vals, type, count);
   count = 0;
  }
 }
 icmpmsg_put_line(seq, vals, type, count);


}
