#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_l2 {scalar_t__ l2_cid; scalar_t__ l2_psm; void* l2_family; int /*<<< orphan*/  l2_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rfcomm_session {int initiator; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  imtu; } ;

/* Variables and functions */
 void* AF_BLUETOOTH ; 
 int /*<<< orphan*/  BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  RFCOMM_PSM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct socket*,struct sockaddr*,int) ; 
 int FUNC5 (struct socket*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_mtu ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct socket**) ; 
 struct rfcomm_session* FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC12 (struct socket*) ; 

__attribute__((used)) static struct rfcomm_session *FUNC13(bdaddr_t *src, bdaddr_t *dst, int *err)
{
	struct rfcomm_session *s = NULL;
	struct sockaddr_l2 addr;
	struct socket *sock;
	struct sock *sk;

	FUNC0("%s %s", FUNC2(src), FUNC2(dst));

	*err = FUNC9(&sock);
	if (*err < 0)
		return NULL;

	FUNC1(&addr.l2_bdaddr, src);
	addr.l2_family = AF_BLUETOOTH;
	addr.l2_psm    = 0;
	addr.l2_cid    = 0;
	*err = FUNC4(sock, (struct sockaddr *) &addr, sizeof(addr));
	if (*err < 0)
		goto failed;

	/* Set L2CAP options */
	sk = sock->sk;
	FUNC7(sk);
	FUNC6(sk)->imtu = l2cap_mtu;
	FUNC8(sk);

	s = FUNC10(sock, BT_BOUND);
	if (!s) {
		*err = -ENOMEM;
		goto failed;
	}

	s->initiator = 1;

	FUNC1(&addr.l2_bdaddr, dst);
	addr.l2_family = AF_BLUETOOTH;
	addr.l2_psm    = FUNC3(RFCOMM_PSM);
	addr.l2_cid    = 0;
	*err = FUNC5(sock, (struct sockaddr *) &addr, sizeof(addr), O_NONBLOCK);
	if (*err == 0 || *err == -EINPROGRESS)
		return s;

	FUNC11(s);
	return NULL;

failed:
	FUNC12(sock);
	return NULL;
}