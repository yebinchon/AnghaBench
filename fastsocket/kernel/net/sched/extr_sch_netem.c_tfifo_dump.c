
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_fifo_qopt {int limit; } ;
struct sk_buff {int len; } ;
struct fifo_sched_data {int limit; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_fifo_qopt*) ;
 int TCA_OPTIONS ;
 struct fifo_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int tfifo_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct fifo_sched_data *q = qdisc_priv(sch);
 struct tc_fifo_qopt opt = { .limit = q->limit };

 NLA_PUT(skb, TCA_OPTIONS, sizeof(opt), &opt);
 return skb->len;

nla_put_failure:
 return -1;
}
