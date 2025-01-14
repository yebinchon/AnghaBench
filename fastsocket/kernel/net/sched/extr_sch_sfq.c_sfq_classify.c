
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int classid; } ;
struct sk_buff {int priority; } ;
struct sfq_sched_data {int filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;


 int NET_XMIT_SUCCESS ;
 scalar_t__ SFQ_HASH_DIVISOR ;



 scalar_t__ TC_H_MAJ (int ) ;
 unsigned int TC_H_MIN (int ) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned int sfq_hash (struct sfq_sched_data*,struct sk_buff*) ;
 int tc_classify (struct sk_buff*,int ,struct tcf_result*) ;

__attribute__((used)) static unsigned int sfq_classify(struct sk_buff *skb, struct Qdisc *sch,
     int *qerr)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 struct tcf_result res;
 int result;

 if (TC_H_MAJ(skb->priority) == sch->handle &&
     TC_H_MIN(skb->priority) > 0 &&
     TC_H_MIN(skb->priority) <= SFQ_HASH_DIVISOR)
  return TC_H_MIN(skb->priority);

 if (!q->filter_list)
  return sfq_hash(q, skb) + 1;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 result = tc_classify(skb, q->filter_list, &res);
 if (result >= 0) {
  if (TC_H_MIN(res.classid) <= SFQ_HASH_DIVISOR)
   return TC_H_MIN(res.classid);
 }
 return 0;
}
