
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tcf_result {size_t classid; scalar_t__ class; } ;
struct sk_buff {size_t priority; } ;
struct cbq_class {scalar_t__ level; struct cbq_class** defaults; int filter_list; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {size_t handle; } ;


 int NET_XMIT_SUCCESS ;




 scalar_t__ TC_H_MAJ (size_t) ;
 size_t TC_PRIO_BESTEFFORT ;
 size_t TC_PRIO_MAX ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct cbq_class* cbq_class_lookup (struct cbq_sched_data*,size_t) ;
 struct cbq_class* cbq_reclassify (struct sk_buff*,struct cbq_class*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 int tc_classify_compat (struct sk_buff*,int ,struct tcf_result*) ;

__attribute__((used)) static struct cbq_class *
cbq_classify(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *head = &q->link;
 struct cbq_class **defmap;
 struct cbq_class *cl = ((void*)0);
 u32 prio = skb->priority;
 struct tcf_result res;




 if (TC_H_MAJ(prio^sch->handle) == 0 &&
     (cl = cbq_class_lookup(q, prio)) != ((void*)0))
  return cl;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 for (;;) {
  int result = 0;
  defmap = head->defaults;




  if (!head->filter_list ||
      (result = tc_classify_compat(skb, head->filter_list, &res)) < 0)
   goto fallback;

  if ((cl = (void*)res.class) == ((void*)0)) {
   if (TC_H_MAJ(res.classid))
    cl = cbq_class_lookup(q, res.classid);
   else if ((cl = defmap[res.classid&TC_PRIO_MAX]) == ((void*)0))
    cl = defmap[TC_PRIO_BESTEFFORT];

   if (cl == ((void*)0) || cl->level >= head->level)
    goto fallback;
  }
  if (cl->level == 0)
   return cl;






  head = cl;
 }

fallback:
 cl = head;




 if (TC_H_MAJ(prio) == 0 &&
     !(cl = head->defaults[prio&TC_PRIO_MAX]) &&
     !(cl = head->defaults[TC_PRIO_BESTEFFORT]))
  return head;

 return cl;
}
