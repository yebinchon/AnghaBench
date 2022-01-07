
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sk_buff {int truesize; struct atm_qdisc_data* data; } ;
struct TYPE_10__ {struct atm_flow_data* next; } ;
struct atm_qdisc_data {TYPE_1__ link; } ;
struct atm_flow_data {scalar_t__ hdr_len; TYPE_3__* vcc; int hdr; TYPE_4__* q; struct atm_flow_data* next; } ;
struct Qdisc {int dummy; } ;
struct TYPE_15__ {TYPE_3__* vcc; } ;
struct TYPE_14__ {int sk_wmem_alloc; } ;
struct TYPE_13__ {TYPE_2__* ops; } ;
struct TYPE_12__ {int (* send ) (TYPE_3__*,struct sk_buff*) ;} ;
struct TYPE_11__ {struct sk_buff* (* peek ) (TYPE_4__*) ;} ;


 TYPE_9__* ATM_SKB (struct sk_buff*) ;
 int atm_may_send (TYPE_3__*,int ) ;
 int atomic_add (int ,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_debug (char*,struct atm_flow_data*,...) ;
 struct sk_buff* qdisc_dequeue_peeked (TYPE_4__*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 TYPE_5__* sk_atm (TYPE_3__*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 struct Qdisc* skb_network_header (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;
 struct sk_buff* stub1 (TYPE_4__*) ;
 int stub2 (TYPE_3__*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sch_atm_dequeue(unsigned long data)
{
 struct Qdisc *sch = (struct Qdisc *)data;
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow;
 struct sk_buff *skb;

 pr_debug("sch_atm_dequeue(sch %p,[qdisc %p])\n", sch, p);
 for (flow = p->link.next; flow; flow = flow->next)




  while ((skb = flow->q->ops->peek(flow->q))) {
   if (!atm_may_send(flow->vcc, skb->truesize))
    break;

   skb = qdisc_dequeue_peeked(flow->q);
   if (unlikely(!skb))
    break;

   pr_debug("atm_tc_dequeue: sending on class %p\n", flow);

   skb_pull(skb, skb_network_offset(skb));
   if (skb_headroom(skb) < flow->hdr_len) {
    struct sk_buff *new;

    new = skb_realloc_headroom(skb, flow->hdr_len);
    dev_kfree_skb(skb);
    if (!new)
     continue;
    skb = new;
   }
   pr_debug("sch_atm_dequeue: ip %p, data %p\n",
     skb_network_header(skb), skb->data);
   ATM_SKB(skb)->vcc = flow->vcc;
   memcpy(skb_push(skb, flow->hdr_len), flow->hdr,
          flow->hdr_len);
   atomic_add(skb->truesize,
       &sk_atm(flow->vcc)->sk_wmem_alloc);

   flow->vcc->send(flow->vcc, skb);
  }
}
