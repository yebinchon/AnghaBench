
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int priority; } ;
struct TYPE_2__ {struct tcf_proto* filter_list; } ;
struct hfsc_sched {int defcls; TYPE_1__ root; } ;
struct hfsc_class {scalar_t__ level; struct tcf_proto* filter_list; } ;
struct Qdisc {int handle; } ;


 int NET_XMIT_SUCCESS ;



 scalar_t__ TC_H_MAJ (int) ;
 int TC_H_MAKE (scalar_t__,int ) ;
 int __NET_XMIT_BYPASS ;
 int __NET_XMIT_STOLEN ;
 struct hfsc_class* hfsc_find_class (int,struct Qdisc*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int tc_classify (struct sk_buff*,struct tcf_proto*,struct tcf_result*) ;

__attribute__((used)) static struct hfsc_class *
hfsc_classify(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl;
 struct tcf_result res;
 struct tcf_proto *tcf;
 int result;

 if (TC_H_MAJ(skb->priority ^ sch->handle) == 0 &&
     (cl = hfsc_find_class(skb->priority, sch)) != ((void*)0))
  if (cl->level == 0)
   return cl;

 *qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
 tcf = q->root.filter_list;
 while (tcf && (result = tc_classify(skb, tcf, &res)) >= 0) {
  if ((cl = (struct hfsc_class *)res.class) == ((void*)0)) {
   if ((cl = hfsc_find_class(res.classid, sch)) == ((void*)0))
    break;
  }

  if (cl->level == 0)
   return cl;


  tcf = cl->filter_list;
 }


 cl = hfsc_find_class(TC_H_MAKE(TC_H_MAJ(sch->handle), q->defcls), sch);
 if (cl == ((void*)0) || cl->level > 0)
  return ((void*)0);

 return cl;
}
