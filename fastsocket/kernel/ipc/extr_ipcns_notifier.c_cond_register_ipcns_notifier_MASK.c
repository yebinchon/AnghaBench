#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  priority; int /*<<< orphan*/  notifier_call; } ;
struct ipc_namespace {int auto_msgmni; TYPE_1__ ipcns_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCNS_CALLBACK_PRI ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ipcns_callback ; 
 int /*<<< orphan*/  ipcns_chain ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct ipc_namespace *ns)
{
	int rc;

	FUNC1(&ns->ipcns_nb, 0, sizeof(ns->ipcns_nb));
	ns->ipcns_nb.notifier_call = ipcns_callback;
	ns->ipcns_nb.priority = IPCNS_CALLBACK_PRI;
	rc = FUNC0(&ipcns_chain,
							&ns->ipcns_nb);
	if (!rc)
		ns->auto_msgmni = 1;
	return rc;
}