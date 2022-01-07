
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {struct tc_u_hnode* data; TYPE_1__* q; struct tc_u_hnode* root; } ;
struct tc_u_hnode {scalar_t__ refcnt; struct tc_u_hnode* next; struct tc_u_hnode* hlist; } ;
struct tc_u_common {scalar_t__ refcnt; struct tc_u_common* next; struct tc_u_common* hlist; } ;
struct TYPE_2__ {int * u32_node; } ;


 int WARN_ON (int) ;
 int kfree (struct tc_u_hnode*) ;
 int u32_clear_hnode (struct tcf_proto*,struct tc_u_hnode*) ;
 int u32_destroy_hnode (struct tcf_proto*,struct tc_u_hnode*) ;

__attribute__((used)) static void u32_destroy(struct tcf_proto *tp)
{
 struct tc_u_common *tp_c = tp->data;
 struct tc_u_hnode *root_ht = tp->root;

 WARN_ON(root_ht == ((void*)0));

 if (root_ht && --root_ht->refcnt == 0)
  u32_destroy_hnode(tp, root_ht);

 if (--tp_c->refcnt == 0) {
  struct tc_u_hnode *ht;

  tp->q->u32_node = ((void*)0);

  for (ht = tp_c->hlist; ht; ht = ht->next) {
   ht->refcnt--;
   u32_clear_hnode(tp, ht);
  }

  while ((ht = tp_c->hlist) != ((void*)0)) {
   tp_c->hlist = ht->next;

   WARN_ON(ht->refcnt != 0);

   kfree(ht);
  }

  kfree(tp_c);
 }

 tp->data = ((void*)0);
}
