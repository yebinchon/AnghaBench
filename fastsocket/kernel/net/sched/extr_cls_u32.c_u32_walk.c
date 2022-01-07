
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,unsigned long,struct tcf_walker*) ;} ;
struct tcf_proto {scalar_t__ prio; struct tc_u_common* data; } ;
struct tc_u_knode {struct tc_u_knode* next; } ;
struct tc_u_hnode {scalar_t__ prio; unsigned int divisor; struct tc_u_knode** ht; struct tc_u_hnode* next; } ;
struct tc_u_common {struct tc_u_hnode* hlist; } ;


 scalar_t__ stub1 (struct tcf_proto*,unsigned long,struct tcf_walker*) ;
 scalar_t__ stub2 (struct tcf_proto*,unsigned long,struct tcf_walker*) ;

__attribute__((used)) static void u32_walk(struct tcf_proto *tp, struct tcf_walker *arg)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_hnode *ht;
 struct tc_u_knode *n;
 unsigned h;

 if (arg->stop)
  return;

 for (ht = tp_c->hlist; ht; ht = ht->next) {
  if (ht->prio != tp->prio)
   continue;
  if (arg->count >= arg->skip) {
   if (arg->fn(tp, (unsigned long)ht, arg) < 0) {
    arg->stop = 1;
    return;
   }
  }
  arg->count++;
  for (h = 0; h <= ht->divisor; h++) {
   for (n = ht->ht[h]; n; n = n->next) {
    if (arg->count < arg->skip) {
     arg->count++;
     continue;
    }
    if (arg->fn(tp, (unsigned long)n, arg) < 0) {
     arg->stop = 1;
     return;
    }
    arg->count++;
   }
  }
 }
}
