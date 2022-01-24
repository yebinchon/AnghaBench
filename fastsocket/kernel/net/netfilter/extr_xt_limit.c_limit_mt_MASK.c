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
struct xt_rateinfo {scalar_t__ credit_cap; scalar_t__ cost; struct xt_limit_priv* master; } ;
struct xt_match_param {struct xt_rateinfo* matchinfo; } ;
struct xt_limit_priv {scalar_t__ credit; int /*<<< orphan*/  prev; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned long CREDITS_PER_JIFFY ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  limit_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool
FUNC3(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct xt_rateinfo *r = par->matchinfo;
	struct xt_limit_priv *priv = r->master;
	unsigned long now = jiffies;

	FUNC0(&limit_lock);
	priv->credit += (now - FUNC2(&priv->prev, now)) * CREDITS_PER_JIFFY;
	if (priv->credit > r->credit_cap)
		priv->credit = r->credit_cap;

	if (priv->credit >= r->cost) {
		/* We're not limited. */
		priv->credit -= r->cost;
		FUNC1(&limit_lock);
		return true;
	}

	FUNC1(&limit_lock);
	return false;
}