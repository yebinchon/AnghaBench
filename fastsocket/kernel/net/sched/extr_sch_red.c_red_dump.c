
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_red_qopt {int qth_min; int qth_max; int Wlog; int Scell_log; int Plog; int flags; int limit; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int qth_min; int Wlog; int qth_max; int Scell_log; int Plog; } ;
struct red_sched_data {TYPE_1__ parms; int flags; int limit; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int EMSGSIZE ;
 int NLA_PUT (struct sk_buff*,int ,int,struct tc_red_qopt*) ;
 int TCA_OPTIONS ;
 int TCA_RED_PARMS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct red_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int red_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct red_sched_data *q = qdisc_priv(sch);
 struct nlattr *opts = ((void*)0);
 struct tc_red_qopt opt = {
  .limit = q->limit,
  .flags = q->flags,
  .qth_min = q->parms.qth_min >> q->parms.Wlog,
  .qth_max = q->parms.qth_max >> q->parms.Wlog,
  .Wlog = q->parms.Wlog,
  .Plog = q->parms.Plog,
  .Scell_log = q->parms.Scell_log,
 };

 opts = nla_nest_start(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;
 NLA_PUT(skb, TCA_RED_PARMS, sizeof(opt), &opt);
 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
