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
struct kern_ipc_perm {int /*<<< orphan*/  security; } ;
struct msg_queue {struct kern_ipc_perm q_perm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct msg_queue *msq)
{
	struct kern_ipc_perm *kisp = &msq->q_perm;

	kisp->security = FUNC0();
	return 0;
}