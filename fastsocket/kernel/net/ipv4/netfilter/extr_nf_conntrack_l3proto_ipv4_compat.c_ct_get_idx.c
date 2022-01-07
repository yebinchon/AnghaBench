
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hlist_nulls_node {int dummy; } ;
typedef scalar_t__ loff_t ;


 struct hlist_nulls_node* ct_get_first (struct seq_file*) ;
 struct hlist_nulls_node* ct_get_next (struct seq_file*,struct hlist_nulls_node*) ;

__attribute__((used)) static struct hlist_nulls_node *ct_get_idx(struct seq_file *seq, loff_t pos)
{
 struct hlist_nulls_node *head = ct_get_first(seq);

 if (head)
  while (pos && (head = ct_get_next(seq, head)))
   pos--;
 return pos ? ((void*)0) : head;
}
