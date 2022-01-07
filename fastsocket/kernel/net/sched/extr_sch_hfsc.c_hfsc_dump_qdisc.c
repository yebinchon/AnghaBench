
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_hfsc_qopt {int defcls; } ;
struct sk_buff {int len; } ;
struct hfsc_sched {int defcls; } ;
struct Qdisc {int dummy; } ;
typedef int qopt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_hfsc_qopt*) ;
 int TCA_OPTIONS ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int
hfsc_dump_qdisc(struct Qdisc *sch, struct sk_buff *skb)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_hfsc_qopt qopt;

 qopt.defcls = q->defcls;
 NLA_PUT(skb, TCA_OPTIONS, sizeof(qopt), &qopt);
 return skb->len;

 nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
