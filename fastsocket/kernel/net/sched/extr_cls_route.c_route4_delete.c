
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int q; scalar_t__ root; } ;
struct route4_head {int ** table; } ;
struct route4_filter {unsigned int handle; int id; struct route4_filter* next; struct route4_bucket* bkt; } ;
struct route4_bucket {struct route4_filter** ht; } ;


 int EINVAL ;
 size_t from_hash (unsigned int) ;
 int kfree (struct route4_bucket*) ;
 int route4_delete_filter (struct tcf_proto*,struct route4_filter*) ;
 int route4_reset_fastmap (int ,struct route4_head*,int ) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;
 size_t to_hash (unsigned int) ;

__attribute__((used)) static int route4_delete(struct tcf_proto *tp, unsigned long arg)
{
 struct route4_head *head = (struct route4_head*)tp->root;
 struct route4_filter **fp, *f = (struct route4_filter*)arg;
 unsigned h = 0;
 struct route4_bucket *b;
 int i;

 if (!head || !f)
  return -EINVAL;

 h = f->handle;
 b = f->bkt;

 for (fp = &b->ht[from_hash(h>>16)]; *fp; fp = &(*fp)->next) {
  if (*fp == f) {
   tcf_tree_lock(tp);
   *fp = f->next;
   tcf_tree_unlock(tp);

   route4_reset_fastmap(tp->q, head, f->id);
   route4_delete_filter(tp, f);



   for (i=0; i<=32; i++)
    if (b->ht[i])
     return 0;


   tcf_tree_lock(tp);
   head->table[to_hash(h)] = ((void*)0);
   tcf_tree_unlock(tp);

   kfree(b);
   return 0;
  }
 }
 return 0;
}
