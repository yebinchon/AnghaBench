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
struct ipc_namespace {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  mq_lock ; 
 int /*<<< orphan*/  FUNC3 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ipc_namespace *ns)
{
	if (FUNC0(&ns->count, &mq_lock)) {
		FUNC2(ns);
		FUNC4(&mq_lock);
		FUNC3(ns);
		FUNC1(ns);
	}
}