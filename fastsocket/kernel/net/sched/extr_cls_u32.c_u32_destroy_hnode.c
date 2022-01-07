
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_hnode {int refcnt; struct tc_u_hnode* next; } ;
struct tc_u_common {struct tc_u_hnode* hlist; } ;


 int ENOENT ;
 int WARN_ON (int) ;
 int kfree (struct tc_u_hnode*) ;
 int u32_clear_hnode (struct tcf_proto*,struct tc_u_hnode*) ;

__attribute__((used)) static int u32_destroy_hnode(struct tcf_proto *tp, struct tc_u_hnode *ht)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_hnode **hn;

 WARN_ON(ht->refcnt);

 u32_clear_hnode(tp, ht);

 for (hn = &tp_c->hlist; *hn; hn = &(*hn)->next) {
  if (*hn == ht) {
   *hn = ht->next;
   kfree(ht);
   return 0;
  }
 }

 WARN_ON(1);
 return -ENOENT;
}
