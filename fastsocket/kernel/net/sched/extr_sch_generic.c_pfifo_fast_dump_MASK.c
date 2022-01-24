#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tc_prio_qopt {int /*<<< orphan*/  priomap; int /*<<< orphan*/  bands; } ;
struct sk_buff {int len; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_prio_qopt*) ; 
 int /*<<< orphan*/  PFIFO_FAST_BANDS ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 scalar_t__ TC_PRIO_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  prio2band ; 

__attribute__((used)) static int FUNC2(struct Qdisc *qdisc, struct sk_buff *skb)
{
	struct tc_prio_qopt opt = { .bands = PFIFO_FAST_BANDS };

	FUNC1(&opt.priomap, prio2band, TC_PRIO_MAX+1);
	FUNC0(skb, TCA_OPTIONS, sizeof(opt), &opt);
	return skb->len;

nla_put_failure:
	return -1;
}