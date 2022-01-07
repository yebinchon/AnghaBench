
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_gred_sopt {int flags; int grio; int def_DP; int DPs; } ;
struct tc_gred_qopt {int DP; int qth_min; int qth_max; int Wlog; int qave; int bytesin; int packets; int pdrop; int forced; int early; int other; int Scell_log; int Plog; int prio; int backlog; int limit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int qth_min; int Wlog; int qth_max; int qavg; int Scell_log; int Plog; } ;
struct TYPE_3__ {int pdrop; int forced_drop; int prob_drop; int other; } ;
struct gred_sched_data {int DP; TYPE_2__ parms; int bytesin; int packetsin; TYPE_1__ stats; int prio; int backlog; int limit; } ;
struct gred_sched {struct gred_sched_data** tab; int red_flags; int def; int DPs; } ;
struct Qdisc {int dummy; } ;
typedef int sopt ;
typedef int opt ;


 int EMSGSIZE ;
 int MAX_DPs ;
 int NLA_PUT (struct sk_buff*,int ,int,struct tc_gred_sopt*) ;
 int TCA_GRED_DPS ;
 int TCA_GRED_PARMS ;
 int TCA_OPTIONS ;
 int gred_load_wred_set (struct gred_sched*,struct gred_sched_data*) ;
 int gred_rio_mode (struct gred_sched*) ;
 scalar_t__ gred_wred_mode (struct gred_sched*) ;
 int memset (struct tc_gred_qopt*,int ,int) ;
 scalar_t__ nla_append (struct sk_buff*,int,struct tc_gred_qopt*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 struct gred_sched* qdisc_priv (struct Qdisc*) ;
 int red_calc_qavg (TYPE_2__*,int ) ;

__attribute__((used)) static int gred_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct gred_sched *table = qdisc_priv(sch);
 struct nlattr *parms, *opts = ((void*)0);
 int i;
 struct tc_gred_sopt sopt = {
  .DPs = table->DPs,
  .def_DP = table->def,
  .grio = gred_rio_mode(table),
  .flags = table->red_flags,
 };

 opts = nla_nest_start(skb, TCA_OPTIONS);
 if (opts == ((void*)0))
  goto nla_put_failure;
 NLA_PUT(skb, TCA_GRED_DPS, sizeof(sopt), &sopt);
 parms = nla_nest_start(skb, TCA_GRED_PARMS);
 if (parms == ((void*)0))
  goto nla_put_failure;

 for (i = 0; i < MAX_DPs; i++) {
  struct gred_sched_data *q = table->tab[i];
  struct tc_gred_qopt opt;

  memset(&opt, 0, sizeof(opt));

  if (!q) {




   opt.DP = MAX_DPs + i;
   goto append_opt;
  }

  opt.limit = q->limit;
  opt.DP = q->DP;
  opt.backlog = q->backlog;
  opt.prio = q->prio;
  opt.qth_min = q->parms.qth_min >> q->parms.Wlog;
  opt.qth_max = q->parms.qth_max >> q->parms.Wlog;
  opt.Wlog = q->parms.Wlog;
  opt.Plog = q->parms.Plog;
  opt.Scell_log = q->parms.Scell_log;
  opt.other = q->stats.other;
  opt.early = q->stats.prob_drop;
  opt.forced = q->stats.forced_drop;
  opt.pdrop = q->stats.pdrop;
  opt.packets = q->packetsin;
  opt.bytesin = q->bytesin;

  if (gred_wred_mode(table))
   gred_load_wred_set(table, q);

  opt.qave = red_calc_qavg(&q->parms, q->parms.qavg);

append_opt:
  if (nla_append(skb, sizeof(opt), &opt) < 0)
   goto nla_put_failure;
 }

 nla_nest_end(skb, parms);

 return nla_nest_end(skb, opts);

nla_put_failure:
 nla_nest_cancel(skb, opts);
 return -EMSGSIZE;
}
