
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 void* SEQ_START_TOKEN ;
 int WIRELESS_EXT ;
 int might_sleep () ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int wireless_seq_printf_stats (struct seq_file*,void*) ;

__attribute__((used)) static int wireless_dev_seq_show(struct seq_file *seq, void *v)
{
 might_sleep();

 if (v == SEQ_START_TOKEN)
  seq_printf(seq, "Inter-| sta-|   Quality        |   Discarded "
    "packets               | Missed | WE\n"
    " face | tus | link level noise |  nwid  "
    "crypt   frag  retry   misc | beacon | %d\n",
      WIRELESS_EXT);
 else
  wireless_seq_printf_stats(seq, v);
 return 0;
}
