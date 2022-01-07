
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_sfq_qopt {int perturb_period; int flows; int divisor; int limit; int quantum; } ;
struct sk_buff {int len; } ;
struct sfq_sched_data {int perturb_period; int limit; int quantum; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int HZ ;
 int NLA_PUT (struct sk_buff*,int ,int,struct tc_sfq_qopt*) ;
 int SFQ_HASH_DIVISOR ;
 int TCA_OPTIONS ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct sfq_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int sfq_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct sfq_sched_data *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_sfq_qopt opt;

 opt.quantum = q->quantum;
 opt.perturb_period = q->perturb_period / HZ;

 opt.limit = q->limit;
 opt.divisor = SFQ_HASH_DIVISOR;
 opt.flows = q->limit;

 NLA_PUT(skb, TCA_OPTIONS, sizeof(opt), &opt);

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
