
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 scalar_t__ cpu_id ;
 int seq_printf (struct seq_file*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*) ;
 void* skb_pool_get_online (int *) ;

__attribute__((used)) static void *skb_pool_seq_start(struct seq_file *seq, loff_t *pos)
{
 seq_printf(seq, "%s\t%-15s%-15s%-15s%-15s%-15s%-15s%-15s%-15s\n",
  "CPU", "Free", "Recycle",
  "Pool_hit", "Slab_hit",
  "C_free", "C_recycle",
  "C_pool_hit", "C_slab_hit");

 cpu_id = 0;

 return skb_pool_get_online(pos);
}
