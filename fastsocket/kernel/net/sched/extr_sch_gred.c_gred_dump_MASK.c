#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tc_gred_sopt {int /*<<< orphan*/  flags; int /*<<< orphan*/  grio; int /*<<< orphan*/  def_DP; int /*<<< orphan*/  DPs; } ;
struct tc_gred_qopt {int DP; int qth_min; int qth_max; int Wlog; int /*<<< orphan*/  qave; int /*<<< orphan*/  bytesin; int /*<<< orphan*/  packets; int /*<<< orphan*/  pdrop; int /*<<< orphan*/  forced; int /*<<< orphan*/  early; int /*<<< orphan*/  other; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  prio; int /*<<< orphan*/  backlog; int /*<<< orphan*/  limit; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int qth_min; int Wlog; int qth_max; int /*<<< orphan*/  qavg; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdrop; int /*<<< orphan*/  forced_drop; int /*<<< orphan*/  prob_drop; int /*<<< orphan*/  other; } ;
struct gred_sched_data {int DP; TYPE_2__ parms; int /*<<< orphan*/  bytesin; int /*<<< orphan*/  packetsin; TYPE_1__ stats; int /*<<< orphan*/  prio; int /*<<< orphan*/  backlog; int /*<<< orphan*/  limit; } ;
struct gred_sched {struct gred_sched_data** tab; int /*<<< orphan*/  red_flags; int /*<<< orphan*/  def; int /*<<< orphan*/  DPs; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  sopt ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int EMSGSIZE ; 
 int MAX_DPs ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_gred_sopt*) ; 
 int /*<<< orphan*/  TCA_GRED_DPS ; 
 int /*<<< orphan*/  TCA_GRED_PARMS ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (struct gred_sched*,struct gred_sched_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct gred_sched*) ; 
 scalar_t__ FUNC3 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_gred_qopt*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,struct tc_gred_qopt*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 int FUNC7 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct gred_sched* FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct sk_buff *skb)
{
	struct gred_sched *table = FUNC9(sch);
	struct nlattr *parms, *opts = NULL;
	int i;
	struct tc_gred_sopt sopt = {
		.DPs	= table->DPs,
		.def_DP	= table->def,
		.grio	= FUNC2(table),
		.flags	= table->red_flags,
	};

	opts = FUNC8(skb, TCA_OPTIONS);
	if (opts == NULL)
		goto nla_put_failure;
	FUNC0(skb, TCA_GRED_DPS, sizeof(sopt), &sopt);
	parms = FUNC8(skb, TCA_GRED_PARMS);
	if (parms == NULL)
		goto nla_put_failure;

	for (i = 0; i < MAX_DPs; i++) {
		struct gred_sched_data *q = table->tab[i];
		struct tc_gred_qopt opt;

		FUNC4(&opt, 0, sizeof(opt));

		if (!q) {
			/* hack -- fix at some point with proper message
			   This is how we indicate to tc that there is no VQ
			   at this DP */

			opt.DP = MAX_DPs + i;
			goto append_opt;
		}

		opt.limit	= q->limit;
		opt.DP		= q->DP;
		opt.backlog	= q->backlog;
		opt.prio	= q->prio;
		opt.qth_min	= q->parms.qth_min >> q->parms.Wlog;
		opt.qth_max	= q->parms.qth_max >> q->parms.Wlog;
		opt.Wlog	= q->parms.Wlog;
		opt.Plog	= q->parms.Plog;
		opt.Scell_log	= q->parms.Scell_log;
		opt.other	= q->stats.other;
		opt.early	= q->stats.prob_drop;
		opt.forced	= q->stats.forced_drop;
		opt.pdrop	= q->stats.pdrop;
		opt.packets	= q->packetsin;
		opt.bytesin	= q->bytesin;

		if (FUNC3(table))
			FUNC1(table, q);

		opt.qave = FUNC10(&q->parms, q->parms.qavg);

append_opt:
		if (FUNC5(skb, sizeof(opt), &opt) < 0)
			goto nla_put_failure;
	}

	FUNC7(skb, parms);

	return FUNC7(skb, opts);

nla_put_failure:
	FUNC6(skb, opts);
	return -EMSGSIZE;
}