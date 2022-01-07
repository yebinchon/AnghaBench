
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 scalar_t__ cpu_id ;
 void* direct_tcp_get_online (int *) ;
 int seq_printf (struct seq_file*,char*,char*,char*,char*) ;

__attribute__((used)) static void *direct_tcp_seq_start(struct seq_file *seq, loff_t *pos)
{
 seq_printf(seq, "%s\t%-15s%-15s\n",
  "CPU", "Fast_route", "Slow_route");

 cpu_id = 0;

 return direct_tcp_get_online(pos);
}
