
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_result {int classid; scalar_t__ class; } ;
struct sk_buff {int priority; } ;
struct qfq_sched {int filter_list; } ;
struct qfq_class {int dummy; } ;
struct Qdisc {int handle; } ;


 int NET_XMIT_SUCCESS ;



 scalar_t__ TC_H_MAJ (int) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 int pr_debug (char*,int) ;
 struct qfq_sched* qdisc_priv (struct Qdisc*) ;
 struct qfq_class* qfq_find_class (struct Qdisc*,int) ;
 int tc_classify (struct sk_buff*,int ,struct tcf_result*) ;

__attribute__((used)) static struct qfq_class *qfq_classify(struct sk_buff *skb, struct Qdisc *sch,
          int *qerr)
{
 struct qfq_sched *q = qdisc_priv(sch);
 struct qfq_class *cl;
 struct tcf_result res;
 int result;

 if (TC_H_MAJ(skb->priority ^ sch->handle) == 0) {
  pr_debug("qfq_classify: found %d\n", skb->priority);
  cl = qfq_find_class(sch, skb->priority);
  if (cl != ((void*)0))
   return cl;
 }

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 result = tc_classify(skb, q->filter_list, &res);
 if (result >= 0) {
  cl = (struct qfq_class *)res.class;
  if (cl == ((void*)0))
   cl = qfq_find_class(sch, res.classid);
  return cl;
 }

 return ((void*)0);
}
