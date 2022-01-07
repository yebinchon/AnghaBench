
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct inet_hash_stats {int global_accept; int remote_accept; int local_accept; int common_accept; int global_listen_lookup; int local_listen_lookup; } ;


 int cpu_id ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int hash_seq_show(struct seq_file *seq, void *v)
{
 struct inet_hash_stats *s = v;

 seq_printf(seq, "%u\t%-15lu%-15lu%-15lu%-15lu%-15lu%-15lu\n",
  cpu_id, s->local_listen_lookup, s->global_listen_lookup,
  s->common_accept, s->local_accept, s->remote_accept, s->global_accept);

 return 0;
}
