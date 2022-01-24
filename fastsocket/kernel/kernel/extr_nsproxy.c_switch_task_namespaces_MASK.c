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
struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nsproxy*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nsproxy*,struct nsproxy*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct task_struct *p, struct nsproxy *new)
{
	struct nsproxy *ns;

	FUNC2();

	ns = p->nsproxy;

	FUNC3(p->nsproxy, new);

	if (ns && FUNC0(&ns->count)) {
		/*
		 * wait for others to get what they want from this nsproxy.
		 *
		 * cannot release this nsproxy via the call_rcu() since
		 * put_mnt_ns() will want to sleep
		 */
		FUNC4();
		FUNC1(ns);
	}
}