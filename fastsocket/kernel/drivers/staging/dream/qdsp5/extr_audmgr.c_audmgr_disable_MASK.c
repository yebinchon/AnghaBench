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
struct audmgr_disable_msg {int /*<<< orphan*/  handle; int /*<<< orphan*/  hdr; } ;
struct audmgr {scalar_t__ state; int /*<<< orphan*/  wait; int /*<<< orphan*/  ept; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AUDMGR_DISABLE_CLIENT ; 
 int /*<<< orphan*/  AUDMGR_PROG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODEV ; 
 int HZ ; 
 scalar_t__ STATE_DISABLED ; 
 scalar_t__ STATE_DISABLING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct audmgr_disable_msg*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 

int FUNC7(struct audmgr *am)
{
	struct audmgr_disable_msg msg;
	int rc;

	if (am->state == STATE_DISABLED)
		return 0;

	FUNC3(&msg.hdr, AUDMGR_PROG, FUNC2(am->ept),
			  AUDMGR_DISABLE_CLIENT);
	msg.handle = FUNC1(am->handle);

	am->state = STATE_DISABLING;

	rc = FUNC4(am->ept, &msg, sizeof(msg));
	if (rc < 0)
		return rc;

	rc = FUNC6(am->wait, am->state != STATE_DISABLING, 15 * HZ);
	if (rc == 0) {
		FUNC5("audmgr_disable: ARM9 did not reply to RPC am->state = %d\n", am->state);
		FUNC0();
	}

	if (am->state == STATE_DISABLED)
		return 0;

	FUNC5("audmgr: unexpected state %d while disabling?!\n", am->state);
	return -ENODEV;
}