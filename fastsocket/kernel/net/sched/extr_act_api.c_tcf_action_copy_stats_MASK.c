#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcf_act_hdr {int /*<<< orphan*/  tcf_qstats; int /*<<< orphan*/  tcf_rate_est; int /*<<< orphan*/  tcf_bstats; int /*<<< orphan*/  tcf_lock; } ;
struct tc_action {scalar_t__ type; TYPE_1__* ops; struct tcf_act_hdr* priv; } ;
struct sk_buff {int dummy; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* get_stats ) (struct sk_buff*,struct tc_action*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_ACT_STATS ; 
 scalar_t__ TCA_OLD_COMPAT ; 
 int /*<<< orphan*/  TCA_STATS ; 
 int /*<<< orphan*/  TCA_XSTATS ; 
 scalar_t__ FUNC0 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct gnet_dump*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gnet_dump*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct gnet_dump*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct tc_action*) ; 

int FUNC7(struct sk_buff *skb, struct tc_action *a,
			  int compat_mode)
{
	int err = 0;
	struct gnet_dump d;
	struct tcf_act_hdr *h = a->priv;

	if (h == NULL)
		goto errout;

	/* compat_mode being true specifies a call that is supposed
	 * to add additional backward compatiblity statistic TLVs.
	 */
	if (compat_mode) {
		if (a->type == TCA_OLD_COMPAT)
			err = FUNC5(skb, 0,
				TCA_STATS, TCA_XSTATS, &h->tcf_lock, &d);
		else
			return 0;
	} else
		err = FUNC4(skb, TCA_ACT_STATS,
					    &h->tcf_lock, &d);

	if (err < 0)
		goto errout;

	if (a->ops != NULL && a->ops->get_stats != NULL)
		if (a->ops->get_stats(skb, a) < 0)
			goto errout;

	if (FUNC0(&d, &h->tcf_bstats) < 0 ||
	    FUNC2(&d, &h->tcf_rate_est) < 0 ||
	    FUNC1(&d, &h->tcf_qstats) < 0)
		goto errout;

	if (FUNC3(&d) < 0)
		goto errout;

	return 0;

errout:
	return -1;
}