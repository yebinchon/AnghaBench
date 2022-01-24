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
struct sockaddr_rc {int /*<<< orphan*/  rc_bdaddr; int /*<<< orphan*/  rc_channel; int /*<<< orphan*/  rc_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_rc*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct sockaddr *addr, int *len, int peer)
{
	struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
	struct sock *sk = sock->sk;

	FUNC0("sock %p, sk %p", sock, sk);

	FUNC3(sa, 0, sizeof(*sa));
	sa->rc_family  = AF_BLUETOOTH;
	sa->rc_channel = FUNC4(sk)->channel;
	if (peer)
		FUNC1(&sa->rc_bdaddr, &FUNC2(sk)->dst);
	else
		FUNC1(&sa->rc_bdaddr, &FUNC2(sk)->src);

	*len = sizeof(struct sockaddr_rc);
	return 0;
}