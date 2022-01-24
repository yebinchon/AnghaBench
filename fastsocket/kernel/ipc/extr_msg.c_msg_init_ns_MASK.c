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
struct ipc_namespace {int /*<<< orphan*/ * ids; int /*<<< orphan*/  msg_hdrs; int /*<<< orphan*/  msg_bytes; int /*<<< orphan*/  msg_ctlmnb; int /*<<< orphan*/  msg_ctlmax; } ;

/* Variables and functions */
 size_t IPC_MSG_IDS ; 
 int /*<<< orphan*/  MSGMAX ; 
 int /*<<< orphan*/  MSGMNB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_namespace*) ; 

void FUNC3(struct ipc_namespace *ns)
{
	ns->msg_ctlmax = MSGMAX;
	ns->msg_ctlmnb = MSGMNB;

	FUNC2(ns);

	FUNC0(&ns->msg_bytes, 0);
	FUNC0(&ns->msg_hdrs, 0);
	FUNC1(&ns->ids[IPC_MSG_IDS]);
}