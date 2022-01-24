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
struct rcu_state {int /*<<< orphan*/  jiffies_force_qs; int /*<<< orphan*/  gpnum; int /*<<< orphan*/  completed; } ;
struct rcu_data {scalar_t__ completed; scalar_t__ gpnum; int /*<<< orphan*/  n_rp_need_nothing; int /*<<< orphan*/  n_rp_need_fqs; int /*<<< orphan*/  n_rp_gp_started; int /*<<< orphan*/  n_rp_gp_completed; int /*<<< orphan*/  n_rp_cpu_needs_gp; int /*<<< orphan*/  n_rp_cb_ready; int /*<<< orphan*/  n_rp_qs_pending; scalar_t__ qs_pending; int /*<<< orphan*/  n_rcu_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_state*,struct rcu_data*) ; 
 scalar_t__ FUNC2 (struct rcu_data*) ; 
 scalar_t__ FUNC3 (struct rcu_state*,struct rcu_data*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (struct rcu_state*) ; 

__attribute__((used)) static int FUNC5(struct rcu_state *rsp, struct rcu_data *rdp)
{
	rdp->n_rcu_pending++;

	/* Check for CPU stalls, if enabled. */
	FUNC1(rsp, rdp);

	/* Is the RCU core waiting for a quiescent state from this CPU? */
	if (rdp->qs_pending) {
		rdp->n_rp_qs_pending++;
		return 1;
	}

	/* Does this CPU have callbacks ready to invoke? */
	if (FUNC2(rdp)) {
		rdp->n_rp_cb_ready++;
		return 1;
	}

	/* Has RCU gone idle with this CPU needing another grace period? */
	if (FUNC3(rsp, rdp)) {
		rdp->n_rp_cpu_needs_gp++;
		return 1;
	}

	/* Has another RCU grace period completed?  */
	if (FUNC0(rsp->completed) != rdp->completed) { /* outside lock */
		rdp->n_rp_gp_completed++;
		return 1;
	}

	/* Has a new RCU grace period started? */
	if (FUNC0(rsp->gpnum) != rdp->gpnum) { /* outside lock */
		rdp->n_rp_gp_started++;
		return 1;
	}

	/* Has an RCU GP gone long enough to send resched IPIs &c? */
	if (FUNC4(rsp) &&
	    ((long)(FUNC0(rsp->jiffies_force_qs) - jiffies) < 0)) {
		rdp->n_rp_need_fqs++;
		return 1;
	}

	/* nothing to do */
	rdp->n_rp_need_nothing++;
	return 0;
}