#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hidp_session {int /*<<< orphan*/  terminate; TYPE_4__* ctrl_sock; TYPE_2__* intr_sock; int /*<<< orphan*/  intr_transmit; int /*<<< orphan*/  ctrl_transmit; } ;
struct hidp_conndel_req {int flags; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_8__ {TYPE_3__* sk; } ;
struct TYPE_7__ {void* sk_err; } ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_5__ {void* sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 void* EUNATCH ; 
 int HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ; 
 int HIDP_TRANS_HID_CONTROL ; 
 int HIDP_VIRTUAL_CABLE_UNPLUG ; 
 struct hidp_session* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hidp_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct hidp_session*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hidp_session_sem ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct hidp_conndel_req *req)
{
	struct hidp_session *session;
	int err = 0;

	FUNC0("");

	FUNC3(&hidp_session_sem);

	session = FUNC1(&req->bdaddr);
	if (session) {
		if (req->flags & (1 << HIDP_VIRTUAL_CABLE_UNPLUG)) {
			FUNC5(session,
				HIDP_TRANS_HID_CONTROL | HIDP_CTRL_VIRTUAL_CABLE_UNPLUG, NULL, 0);
		} else {
			/* Flush the transmit queues */
			FUNC6(&session->ctrl_transmit);
			FUNC6(&session->intr_transmit);

			/* Wakeup user-space polling for socket errors */
			session->intr_sock->sk->sk_err = EUNATCH;
			session->ctrl_sock->sk->sk_err = EUNATCH;

			/* Kill session thread */
			FUNC2(&session->terminate);
			FUNC4(session);
		}
	} else
		err = -ENOENT;

	FUNC7(&hidp_session_sem);
	return err;
}