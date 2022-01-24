#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bnep_session {TYPE_2__* sock; int /*<<< orphan*/  killed; } ;
struct bnep_conndel_req {int /*<<< orphan*/  dst; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  EUNATCH ; 
 struct bnep_session* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnep_session_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct bnep_conndel_req *req)
{
	struct bnep_session *s;
	int  err = 0;

	FUNC0("");

	FUNC3(&bnep_session_sem);

	s = FUNC1(req->dst);
	if (s) {
		/* Wakeup user-space which is polling for socket errors.
		 * This is temporary hack untill we have shutdown in L2CAP */
		s->sock->sk->sk_err = EUNATCH;

		/* Kill session thread */
		FUNC2(&s->killed);
		FUNC5(s->sock->sk->sk_sleep);
	} else
		err = -ENOENT;

	FUNC4(&bnep_session_sem);
	return err;
}