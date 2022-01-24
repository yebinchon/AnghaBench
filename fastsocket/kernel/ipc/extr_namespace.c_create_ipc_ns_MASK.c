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
struct ipc_namespace {int /*<<< orphan*/  proc_inum; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ipc_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPCNS_CREATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipc_namespace*) ; 
 struct ipc_namespace* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  nr_ipc_ns ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC11 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC12 (struct ipc_namespace*) ; 

__attribute__((used)) static struct ipc_namespace *FUNC13(void)
{
	struct ipc_namespace *ns;
	int err;

	ns = FUNC5(sizeof(struct ipc_namespace), GFP_KERNEL);
	if (ns == NULL)
		return FUNC0(-ENOMEM);

	err = FUNC8(&ns->proc_inum);
	if (err) {
		FUNC4(ns);
		return FUNC0(err);
	}

	FUNC2(&ns->count, 1);
	err = FUNC6(ns);
	if (err) {
		FUNC9(ns->proc_inum);
		FUNC4(ns);
		return FUNC0(err);
	}
	FUNC1(&nr_ipc_ns);

	FUNC11(ns);
	FUNC7(ns);
	FUNC12(ns);

	/*
	 * msgmni has already been computed for the new ipc ns.
	 * Thus, do the ipcns creation notification before registering that
	 * new ipcns in the chain.
	 */
	FUNC3(IPCNS_CREATED);
	FUNC10(ns);

	return ns;
}