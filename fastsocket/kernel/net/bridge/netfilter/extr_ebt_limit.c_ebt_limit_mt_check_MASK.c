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
struct xt_mtchk_param {struct ebt_limit_info* matchinfo; } ;
struct ebt_limit_info {int burst; int avg; scalar_t__ cost; scalar_t__ credit_cap; scalar_t__ credit; int /*<<< orphan*/  prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(const struct xt_mtchk_param *par)
{
	struct ebt_limit_info *info = par->matchinfo;

	/* Check for overflow. */
	if (info->burst == 0 ||
	    FUNC1(info->avg * info->burst) < FUNC1(info->avg)) {
		FUNC0("Overflow in ebt_limit, try lower: %u/%u\n",
			info->avg, info->burst);
		return false;
	}

	/* User avg in seconds * EBT_LIMIT_SCALE: convert to jiffies * 128. */
	info->prev = jiffies;
	info->credit = FUNC1(info->avg * info->burst);
	info->credit_cap = FUNC1(info->avg * info->burst);
	info->cost = FUNC1(info->avg);
	return true;
}