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
struct xt_match_param {scalar_t__ matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_limit_info {scalar_t__ credit; scalar_t__ credit_cap; scalar_t__ cost; int /*<<< orphan*/  prev; } ;

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
	struct ebt_limit_info *info = (void *)par->matchinfo;
	unsigned long now = jiffies;

	FUNC0(&limit_lock);
	info->credit += (now - FUNC2(&info->prev, now)) * CREDITS_PER_JIFFY;
	if (info->credit > info->credit_cap)
		info->credit = info->credit_cap;

	if (info->credit >= info->cost) {
		/* We're not limited. */
		info->credit -= info->cost;
		FUNC1(&limit_lock);
		return true;
	}

	FUNC1(&limit_lock);
	return false;
}