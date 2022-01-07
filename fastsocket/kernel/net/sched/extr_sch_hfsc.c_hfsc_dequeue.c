
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct hfsc_sched {int root; } ;
struct hfsc_class {int cl_flags; TYPE_4__* qdisc; int cl_cumul; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct TYPE_7__ {int overlimits; } ;
struct Qdisc {TYPE_3__ q; int flags; TYPE_1__ qstats; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct TYPE_10__ {TYPE_2__ q; } ;


 int HFSC_RSC ;
 int TCQ_F_THROTTLED ;
 struct hfsc_class* eltree_get_mindl (struct hfsc_sched*,int ) ;
 int hfsc_schedule_watchdog (struct Qdisc*) ;
 int psched_get_time () ;
 struct sk_buff* qdisc_dequeue_peeked (TYPE_4__*) ;
 unsigned int qdisc_peek_len (TYPE_4__*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_warn_nonwc (char*,TYPE_4__*) ;
 int set_passive (struct hfsc_class*) ;
 int update_d (struct hfsc_class*,unsigned int) ;
 int update_ed (struct hfsc_class*,unsigned int) ;
 int update_vf (struct hfsc_class*,scalar_t__,int ) ;
 struct hfsc_class* vttree_get_minvt (int *,int ) ;

__attribute__((used)) static struct sk_buff *
hfsc_dequeue(struct Qdisc *sch)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl;
 struct sk_buff *skb;
 u64 cur_time;
 unsigned int next_len;
 int realtime = 0;

 if (sch->q.qlen == 0)
  return ((void*)0);

 cur_time = psched_get_time();






 if ((cl = eltree_get_mindl(q, cur_time)) != ((void*)0)) {
  realtime = 1;
 } else {




  cl = vttree_get_minvt(&q->root, cur_time);
  if (cl == ((void*)0)) {
   sch->qstats.overlimits++;
   hfsc_schedule_watchdog(sch);
   return ((void*)0);
  }
 }

 skb = qdisc_dequeue_peeked(cl->qdisc);
 if (skb == ((void*)0)) {
  qdisc_warn_nonwc("HFSC", cl->qdisc);
  return ((void*)0);
 }

 update_vf(cl, qdisc_pkt_len(skb), cur_time);
 if (realtime)
  cl->cl_cumul += qdisc_pkt_len(skb);

 if (cl->qdisc->q.qlen != 0) {
  if (cl->cl_flags & HFSC_RSC) {

   next_len = qdisc_peek_len(cl->qdisc);
   if (realtime)
    update_ed(cl, next_len);
   else
    update_d(cl, next_len);
  }
 } else {

  set_passive(cl);
 }

 sch->flags &= ~TCQ_F_THROTTLED;
 sch->q.qlen--;

 return skb;
}
