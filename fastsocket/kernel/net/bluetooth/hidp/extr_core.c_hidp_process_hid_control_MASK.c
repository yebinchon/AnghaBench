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
struct hidp_session {int /*<<< orphan*/  terminate; int /*<<< orphan*/  intr_transmit; int /*<<< orphan*/  ctrl_transmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,unsigned char) ; 
 unsigned char HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hidp_session *session,
					unsigned char param)
{
	FUNC0("session %p param 0x%02x", session, param);

	if (param == HIDP_CTRL_VIRTUAL_CABLE_UNPLUG) {
		/* Flush the transmit queues */
		FUNC3(&session->ctrl_transmit);
		FUNC3(&session->intr_transmit);

		/* Kill session thread */
		FUNC1(&session->terminate);
		FUNC2(session);
	}
}