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
struct gnet_stats_rate_est {int dummy; } ;
struct gnet_stats_basic_packed {int dummy; } ;
struct gen_estimator {int /*<<< orphan*/  e_rcu; int /*<<< orphan*/  list; int /*<<< orphan*/ * bstats; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  __gen_kill_estimator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  est_lock ; 
 int /*<<< orphan*/  est_root ; 
 struct gen_estimator* FUNC1 (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct gnet_stats_basic_packed *bstats,
			struct gnet_stats_rate_est *rate_est)
{
	struct gen_estimator *e;

	while ((e = FUNC1(bstats, rate_est))) {
		FUNC3(&e->node, &est_root);

		FUNC4(&est_lock);
		e->bstats = NULL;
		FUNC5(&est_lock);

		FUNC2(&e->list);
		FUNC0(&e->e_rcu, __gen_kill_estimator);
	}
}