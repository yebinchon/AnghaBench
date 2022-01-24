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
struct nlattr {int dummy; } ;
struct gnet_stats_rate_est {int dummy; } ;
struct gnet_stats_basic_packed {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*) ; 
 int FUNC1 (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*,int /*<<< orphan*/ *,struct nlattr*) ; 

int FUNC2(struct gnet_stats_basic_packed *bstats,
			  struct gnet_stats_rate_est *rate_est,
			  spinlock_t *stats_lock, struct nlattr *opt)
{
	FUNC0(bstats, rate_est);
	return FUNC1(bstats, rate_est, stats_lock, opt);
}