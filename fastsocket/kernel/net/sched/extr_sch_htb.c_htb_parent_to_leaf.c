
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htb_sched {scalar_t__ wait_pq; } ;
struct TYPE_3__ {struct Qdisc* q; int drop_list; } ;
struct TYPE_4__ {TYPE_1__ leaf; int inner; } ;
struct htb_class {scalar_t__ cmode; int t_c; int cbuffer; int ctokens; int buffer; int tokens; TYPE_2__ un; scalar_t__ level; int pq_node; scalar_t__ prio_activity; struct htb_class* parent; } ;
struct Qdisc {int dummy; } ;


 scalar_t__ HTB_CAN_SEND ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int htb_safe_rb_erase (int *,scalar_t__) ;
 int memset (int *,int ,int) ;
 struct Qdisc noop_qdisc ;
 int psched_get_time () ;

__attribute__((used)) static void htb_parent_to_leaf(struct htb_sched *q, struct htb_class *cl,
          struct Qdisc *new_q)
{
 struct htb_class *parent = cl->parent;

 WARN_ON(cl->level || !cl->un.leaf.q || cl->prio_activity);

 if (parent->cmode != HTB_CAN_SEND)
  htb_safe_rb_erase(&parent->pq_node, q->wait_pq + parent->level);

 parent->level = 0;
 memset(&parent->un.inner, 0, sizeof(parent->un.inner));
 INIT_LIST_HEAD(&parent->un.leaf.drop_list);
 parent->un.leaf.q = new_q ? new_q : &noop_qdisc;
 parent->tokens = parent->buffer;
 parent->ctokens = parent->cbuffer;
 parent->t_c = psched_get_time();
 parent->cmode = HTB_CAN_SEND;
}
