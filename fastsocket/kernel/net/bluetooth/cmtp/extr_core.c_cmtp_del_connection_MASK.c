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
struct cmtp_session {int /*<<< orphan*/  terminate; int /*<<< orphan*/  transmit; } ;
struct cmtp_conndel_req {int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 struct cmtp_session* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cmtp_session*) ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct cmtp_conndel_req *req)
{
	struct cmtp_session *session;
	int err = 0;

	FUNC0("");

	FUNC4(&cmtp_session_sem);

	session = FUNC1(&req->bdaddr);
	if (session) {
		/* Flush the transmit queue */
		FUNC5(&session->transmit);

		/* Kill session thread */
		FUNC2(&session->terminate);
		FUNC3(session);
	} else
		err = -ENOENT;

	FUNC6(&cmtp_session_sem);
	return err;
}