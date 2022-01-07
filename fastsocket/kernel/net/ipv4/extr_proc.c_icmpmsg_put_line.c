
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void icmpmsg_put_line(struct seq_file *seq, unsigned long *vals,
        unsigned short *type, int count)
{
 int j;

 if (count) {
  seq_printf(seq, "\nIcmpMsg:");
  for (j = 0; j < count; ++j)
   seq_printf(seq, " %sType%u",
    type[j] & 0x100 ? "Out" : "In",
    type[j] & 0xff);
  seq_printf(seq, "\nIcmpMsg:");
  for (j = 0; j < count; ++j)
   seq_printf(seq, " %lu", vals[j]);
 }
}
