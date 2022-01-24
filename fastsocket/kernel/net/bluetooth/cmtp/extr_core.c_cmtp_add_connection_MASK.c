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
struct socket {int /*<<< orphan*/  sk; } ;
struct cmtp_session {scalar_t__ state; int flags; int /*<<< orphan*/ ** reassembly; int /*<<< orphan*/  transmit; int /*<<< orphan*/  applications; int /*<<< orphan*/  msgnum; int /*<<< orphan*/  wait; struct socket* sock; int /*<<< orphan*/  name; int /*<<< orphan*/  mtu; int /*<<< orphan*/  bdaddr; } ;
struct cmtp_connadd_req {int flags; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  imtu; int /*<<< orphan*/  omtu; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  CLONE_KERNEL ; 
 int /*<<< orphan*/  CMTP_INITIAL_MSGNUM ; 
 int CMTP_LOOPBACK ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cmtp_session* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cmtp_session*) ; 
 int /*<<< orphan*/  FUNC10 (struct cmtp_session*) ; 
 int /*<<< orphan*/  cmtp_session ; 
 int /*<<< orphan*/  cmtp_session_sem ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct cmtp_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cmtp_session*) ; 
 struct cmtp_session* FUNC15 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  uint ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct cmtp_connadd_req *req, struct socket *sock)
{
	struct cmtp_session *session, *s;
	bdaddr_t src, dst;
	int i, err;

	FUNC0("");

	FUNC6(&src, &FUNC8(sock->sk)->src);
	FUNC6(&dst, &FUNC8(sock->sk)->dst);

	session = FUNC15(sizeof(struct cmtp_session), GFP_KERNEL);
	if (!session)
		return -ENOMEM;

	FUNC11(&cmtp_session_sem);

	s = FUNC2(&FUNC8(sock->sk)->dst);
	if (s && s->state == BT_CONNECTED) {
		err = -EEXIST;
		goto failed;
	}

	FUNC5(&session->bdaddr, &FUNC8(sock->sk)->dst);

	session->mtu = FUNC17(uint, FUNC16(sock->sk)->omtu, FUNC16(sock->sk)->imtu);

	FUNC0("mtu %d", session->mtu);

	FUNC19(session->name, "%s", FUNC7(&dst));

	session->sock  = sock;
	session->state = BT_CONFIG;

	FUNC12(&session->wait);

	session->msgnum = CMTP_INITIAL_MSGNUM;

	FUNC1(&session->applications);

	FUNC18(&session->transmit);

	for (i = 0; i < 16; i++)
		session->reassembly[i] = NULL;

	session->flags = req->flags;

	FUNC3(session);

	err = FUNC13(cmtp_session, session, CLONE_KERNEL);
	if (err < 0)
		goto unlink;

	if (!(session->flags & (1 << CMTP_LOOPBACK))) {
		err = FUNC9(session);
		if (err < 0)
			goto detach;
	}

	FUNC20(&cmtp_session_sem);
	return 0;

detach:
	FUNC10(session);

unlink:
	FUNC4(session);

failed:
	FUNC20(&cmtp_session_sem);
	FUNC14(session);
	return err;
}