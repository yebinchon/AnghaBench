
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct direct_tcp_stat {int input_route_slow; int input_route_fast; } ;


 int cpu_id ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int direct_tcp_seq_show(struct seq_file *seq, void *v)
{
 struct direct_tcp_stat *s = v;

 seq_printf(seq, "%u\t%-15lu%-15lu\n",
  cpu_id, s->input_route_fast, s->input_route_slow);

 return 0;
}
