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
struct ipc_namespace {int /*<<< orphan*/  proc_inum; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCNS_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  nr_ipc_ns ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipc_namespace*) ; 

__attribute__((used)) static void FUNC8(struct ipc_namespace *ns)
{
	/*
	 * Unregistering the hotplug notifier at the beginning guarantees
	 * that the ipc namespace won't be freed while we are inside the
	 * callback routine. Since the blocking_notifier_chain_XXX routines
	 * hold a rw lock on the notifier list, unregister_ipcns_notifier()
	 * won't take the rw lock before blocking_notifier_call_chain() has
	 * released the rd lock.
	 */
	FUNC7(ns);
	FUNC5(ns);
	FUNC3(ns);
	FUNC6(ns);
	FUNC4(ns->proc_inum);
	FUNC2(ns);
	FUNC0(&nr_ipc_ns);

	/*
	 * Do the ipcns removal notification after decrementing nr_ipc_ns in
	 * order to have a correct value when recomputing msgmni.
	 */
	FUNC1(IPCNS_REMOVED);
}