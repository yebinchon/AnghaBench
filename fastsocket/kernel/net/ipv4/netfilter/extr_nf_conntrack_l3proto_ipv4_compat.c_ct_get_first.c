
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct ct_iter_state* private; } ;
struct TYPE_4__ {size_t htable_size; TYPE_1__* hash; } ;
struct net {TYPE_2__ ct; } ;
struct hlist_nulls_node {int dummy; } ;
struct ct_iter_state {size_t bucket; } ;
struct TYPE_3__ {int first; } ;


 int is_a_nulls (struct hlist_nulls_node*) ;
 struct hlist_nulls_node* rcu_dereference (int ) ;
 struct net* seq_file_net (struct seq_file*) ;

__attribute__((used)) static struct hlist_nulls_node *ct_get_first(struct seq_file *seq)
{
 struct net *net = seq_file_net(seq);
 struct ct_iter_state *st = seq->private;
 struct hlist_nulls_node *n;

 for (st->bucket = 0;
      st->bucket < net->ct.htable_size;
      st->bucket++) {
  n = rcu_dereference(net->ct.hash[st->bucket].first);
  if (!is_a_nulls(n))
   return n;
 }
 return ((void*)0);
}
