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
struct seq_file {int dummy; } ;
struct rcu_data {int /*<<< orphan*/  n_rp_need_nothing; int /*<<< orphan*/  n_rp_need_fqs; int /*<<< orphan*/  n_rp_gp_started; int /*<<< orphan*/  n_rp_gp_completed; int /*<<< orphan*/  n_rp_cpu_needs_gp; int /*<<< orphan*/  n_rp_cb_ready; int /*<<< orphan*/  n_rp_qs_pending; int /*<<< orphan*/  n_rcu_pending; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, struct rcu_data *rdp)
{
	FUNC1(m, "%3d%cnp=%ld "
		   "qsp=%ld cbr=%ld cng=%ld gpc=%ld gps=%ld nf=%ld nn=%ld\n",
		   rdp->cpu,
		   FUNC0(rdp->cpu) ? '!' : ' ',
		   rdp->n_rcu_pending,
		   rdp->n_rp_qs_pending,
		   rdp->n_rp_cb_ready,
		   rdp->n_rp_cpu_needs_gp,
		   rdp->n_rp_gp_completed,
		   rdp->n_rp_gp_started,
		   rdp->n_rp_need_fqs,
		   rdp->n_rp_need_nothing);
}