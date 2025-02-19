
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int count; } ;
struct net {TYPE_1__ ct; } ;
struct ip_conntrack_stat {int expect_delete; int expect_create; int expect_new; int error; int early_drop; int drop; int insert_failed; int insert; int delete_list; int delete; int ignore; int invalid; int new; int found; int searched; } ;


 void* SEQ_START_TOKEN ;
 unsigned int atomic_read (int *) ;
 struct net* seq_file_net (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int ct_cpu_seq_show(struct seq_file *seq, void *v)
{
 struct net *net = seq_file_net(seq);
 unsigned int nr_conntracks = atomic_read(&net->ct.count);
 const struct ip_conntrack_stat *st = v;

 if (v == SEQ_START_TOKEN) {
  seq_printf(seq, "entries  searched found new invalid ignore delete delete_list insert insert_failed drop early_drop icmp_error  expect_new expect_create expect_delete\n");
  return 0;
 }

 seq_printf(seq, "%08x  %08x %08x %08x %08x %08x %08x %08x "
   "%08x %08x %08x %08x %08x  %08x %08x %08x \n",
     nr_conntracks,
     st->searched,
     st->found,
     st->new,
     st->invalid,
     st->ignore,
     st->delete,
     st->delete_list,
     st->insert,
     st->insert_failed,
     st->drop,
     st->early_drop,
     st->error,

     st->expect_new,
     st->expect_create,
     st->expect_delete
  );
 return 0;
}
