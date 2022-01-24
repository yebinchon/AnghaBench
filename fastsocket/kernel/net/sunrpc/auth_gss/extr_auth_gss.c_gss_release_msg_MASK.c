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
struct gss_upcall_msg {int /*<<< orphan*/  rpc_waitqueue; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  list; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct gss_upcall_msg *gss_msg)
{
	if (!FUNC1(&gss_msg->count))
		return;
	FUNC5();
	FUNC0(!FUNC4(&gss_msg->list));
	if (gss_msg->ctx != NULL)
		FUNC2(gss_msg->ctx);
	FUNC6(&gss_msg->rpc_waitqueue);
	FUNC3(gss_msg);
}