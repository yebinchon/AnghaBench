
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_prio_qopt {int priomap; int bands; } ;
struct sk_buff {int len; } ;
struct prio_sched_data {int prio2band; int bands; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_prio_qopt*) ;
 int TCA_OPTIONS ;
 scalar_t__ TC_PRIO_MAX ;
 int memcpy (int *,int ,scalar_t__) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct prio_sched_data* qdisc_priv (struct Qdisc*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int prio_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct prio_sched_data *q = qdisc_priv(sch);
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_prio_qopt opt;

 opt.bands = q->bands;
 memcpy(&opt.priomap, q->prio2band, TC_PRIO_MAX+1);

 NLA_PUT(skb, TCA_OPTIONS, sizeof(opt), &opt);

 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
