
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct htb_sched {scalar_t__ wait_pq; int now; } ;
struct TYPE_5__ {int bytes; int packets; } ;
struct TYPE_4__ {int borrows; int lends; } ;
struct htb_class {int level; long tokens; int cmode; struct htb_class* parent; TYPE_2__ bstats; int pq_node; int t_c; TYPE_1__ xstats; int mbuffer; } ;
typedef enum htb_cmode { ____Placeholder_htb_cmode } htb_cmode ;
struct TYPE_6__ {int gso_segs; } ;


 int HTB_CAN_SEND ;
 int htb_accnt_ctokens (struct htb_class*,int,long) ;
 int htb_accnt_tokens (struct htb_class*,int,long) ;
 int htb_add_to_wait_tree (struct htb_sched*,struct htb_class*,long) ;
 int htb_change_class_mode (struct htb_sched*,struct htb_class*,long*) ;
 int htb_safe_rb_erase (int *,scalar_t__) ;
 long psched_tdiff_bounded (int ,int ,int ) ;
 int qdisc_pkt_len (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void htb_charge_class(struct htb_sched *q, struct htb_class *cl,
        int level, struct sk_buff *skb)
{
 int bytes = qdisc_pkt_len(skb);
 enum htb_cmode old_mode;
 long diff;

 while (cl) {
  diff = psched_tdiff_bounded(q->now, cl->t_c, cl->mbuffer);
  if (cl->level >= level) {
   if (cl->level == level)
    cl->xstats.lends++;
   htb_accnt_tokens(cl, bytes, diff);
  } else {
   cl->xstats.borrows++;
   cl->tokens += diff;
  }
  htb_accnt_ctokens(cl, bytes, diff);
  cl->t_c = q->now;

  old_mode = cl->cmode;
  diff = 0;
  htb_change_class_mode(q, cl, &diff);
  if (old_mode != cl->cmode) {
   if (old_mode != HTB_CAN_SEND)
    htb_safe_rb_erase(&cl->pq_node, q->wait_pq + cl->level);
   if (cl->cmode != HTB_CAN_SEND)
    htb_add_to_wait_tree(q, cl, diff);
  }


  if (cl->level) {
   cl->bstats.bytes += bytes;
   cl->bstats.packets += skb_is_gso(skb)?
     skb_shinfo(skb)->gso_segs:1;
  }
  cl = cl->parent;
 }
}
