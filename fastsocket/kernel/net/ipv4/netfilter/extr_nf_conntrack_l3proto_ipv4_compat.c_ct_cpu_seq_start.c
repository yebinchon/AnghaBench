
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int stat; } ;
struct net {TYPE_1__ ct; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 int cpu_possible (int) ;
 int nr_cpu_ids ;
 void* per_cpu_ptr (int ,int) ;
 struct net* seq_file_net (struct seq_file*) ;

__attribute__((used)) static void *ct_cpu_seq_start(struct seq_file *seq, loff_t *pos)
{
 struct net *net = seq_file_net(seq);
 int cpu;

 if (*pos == 0)
  return SEQ_START_TOKEN;

 for (cpu = *pos-1; cpu < nr_cpu_ids; ++cpu) {
  if (!cpu_possible(cpu))
   continue;
  *pos = cpu+1;
  return per_cpu_ptr(net->ct.stat, cpu);
 }

 return ((void*)0);
}
