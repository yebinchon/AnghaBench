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
struct sockaddr_l2 {scalar_t__ l2_cid; int /*<<< orphan*/  l2_psm; int /*<<< orphan*/  l2_family; int /*<<< orphan*/  l2_bdaddr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct rfcomm_session {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  imtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  RFCOMM_PSM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct socket*,struct sockaddr*,int) ; 
 int FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  l2cap_mtu ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct socket**) ; 
 struct rfcomm_session* FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 

__attribute__((used)) static int FUNC12(bdaddr_t *ba)
{
	struct sockaddr_l2 addr;
	struct socket *sock;
	struct sock *sk;
	struct rfcomm_session *s;
	int    err = 0;

	/* Create socket */
	err = FUNC8(&sock);
	if (err < 0) {
		FUNC0("Create socket failed %d", err);
		return err;
	}

	/* Bind socket */
	FUNC1(&addr.l2_bdaddr, ba);
	addr.l2_family = AF_BLUETOOTH;
	addr.l2_psm    = FUNC2(RFCOMM_PSM);
	addr.l2_cid    = 0;
	err = FUNC3(sock, (struct sockaddr *) &addr, sizeof(addr));
	if (err < 0) {
		FUNC0("Bind failed %d", err);
		goto failed;
	}

	/* Set L2CAP options */
	sk = sock->sk;
	FUNC6(sk);
	FUNC5(sk)->imtu = l2cap_mtu;
	FUNC7(sk);

	/* Start listening on the socket */
	err = FUNC4(sock, 10);
	if (err) {
		FUNC0("Listen failed %d", err);
		goto failed;
	}

	/* Add listening session */
	s = FUNC9(sock, BT_LISTEN);
	if (!s)
		goto failed;

	FUNC10(s);
	return 0;
failed:
	FUNC11(sock);
	return err;
}