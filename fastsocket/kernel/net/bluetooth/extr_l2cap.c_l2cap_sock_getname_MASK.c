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
struct socket {struct sock* sk; } ;
struct sockaddr_l2 {void* l2_cid; int /*<<< orphan*/  l2_bdaddr; int /*<<< orphan*/  l2_psm; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_3__ {int /*<<< orphan*/  scid; int /*<<< orphan*/  sport; int /*<<< orphan*/  dcid; int /*<<< orphan*/  psm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_l2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *addr, int *len, int peer)
{
	struct sockaddr_l2 *la = (struct sockaddr_l2 *) addr;
	struct sock *sk = sock->sk;

	FUNC0("sock %p, sk %p", sock, sk);

	FUNC5(la, 0, sizeof(struct sockaddr_l2));
	addr->sa_family = AF_BLUETOOTH;
	*len = sizeof(struct sockaddr_l2);

	if (peer) {
		la->l2_psm = FUNC4(sk)->psm;
		FUNC1(&la->l2_bdaddr, &FUNC2(sk)->dst);
		la->l2_cid = FUNC3(FUNC4(sk)->dcid);
	} else {
		la->l2_psm = FUNC4(sk)->sport;
		FUNC1(&la->l2_bdaddr, &FUNC2(sk)->src);
		la->l2_cid = FUNC3(FUNC4(sk)->scid);
	}

	return 0;
}