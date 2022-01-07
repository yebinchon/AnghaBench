
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_tbf_qopt {int buffer; int mtu; int peakrate; int rate; int limit; } ;
struct tbf_sched_data {int buffer; int mtu; TYPE_2__* P_tab; TYPE_1__* R_tab; int limit; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {int rate; } ;


 int NLA_PUT (struct sk_buff*,int ,int,struct tc_tbf_qopt*) ;
 int TCA_OPTIONS ;
 int TCA_TBF_PARMS ;
 int memset (int *,int ,int) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int tbf_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct tbf_sched_data *q = qdisc_priv(sch);
 struct nlattr *nest;
 struct tc_tbf_qopt opt;

 nest = nla_nest_start(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 opt.limit = q->limit;
 opt.rate = q->R_tab->rate;
 if (q->P_tab)
  opt.peakrate = q->P_tab->rate;
 else
  memset(&opt.peakrate, 0, sizeof(opt.peakrate));
 opt.mtu = q->mtu;
 opt.buffer = q->buffer;
 NLA_PUT(skb, TCA_TBF_PARMS, sizeof(opt), &opt);

 nla_nest_end(skb, nest);
 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
