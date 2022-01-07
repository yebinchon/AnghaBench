
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {struct tc_u_common* data; struct tc_u_hnode* root; TYPE_1__* q; int prio; } ;
struct tc_u_hnode {int handle; struct tc_u_common* tp_c; struct tc_u_hnode* next; int prio; int refcnt; scalar_t__ divisor; } ;
struct tc_u_common {struct tc_u_hnode* hlist; int refcnt; TYPE_1__* q; } ;
struct TYPE_2__ {struct tc_u_common* u32_node; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int gen_new_htid (struct tc_u_common*) ;
 int kfree (struct tc_u_hnode*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int u32_init(struct tcf_proto *tp)
{
 struct tc_u_hnode *root_ht;
 struct tc_u_common *tp_c;

 tp_c = tp->q->u32_node;

 root_ht = kzalloc(sizeof(*root_ht), GFP_KERNEL);
 if (root_ht == ((void*)0))
  return -ENOBUFS;

 root_ht->divisor = 0;
 root_ht->refcnt++;
 root_ht->handle = tp_c ? gen_new_htid(tp_c) : 0x80000000;
 root_ht->prio = tp->prio;

 if (tp_c == ((void*)0)) {
  tp_c = kzalloc(sizeof(*tp_c), GFP_KERNEL);
  if (tp_c == ((void*)0)) {
   kfree(root_ht);
   return -ENOBUFS;
  }
  tp_c->q = tp->q;
  tp->q->u32_node = tp_c;
 }

 tp_c->refcnt++;
 root_ht->next = tp_c->hlist;
 tp_c->hlist = root_ht;
 root_ht->tp_c = tp_c;

 tp->root = root_ht;
 tp->data = tp_c;
 return 0;
}
