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
struct cmtp_session {int dummy; } ;
struct cmtp_conninfo {int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct cmtp_session*,struct cmtp_conninfo*) ; 
 struct cmtp_session* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct cmtp_conninfo *ci)
{
	struct cmtp_session *session;
	int err = 0;

	FUNC2(&cmtp_session_sem);

	session = FUNC1(&ci->bdaddr);
	if (session)
		FUNC0(session, ci);
	else
		err = -ENOENT;

	FUNC3(&cmtp_session_sem);
	return err;
}