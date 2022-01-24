#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sockaddr_rc {scalar_t__ rc_channel; int /*<<< orphan*/  rc_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  src; } ;
struct TYPE_5__ {scalar_t__ channel; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_OPEN ; 
 int EADDRINUSE ; 
 int EBADFD ; 
 int EINVAL ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 TYPE_1__ rfcomm_sk_list ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
	struct sock *sk = sock->sk;
	int err = 0;

	FUNC0("sk %p %s", sk, FUNC3(&sa->rc_bdaddr));

	if (!addr || addr->sa_family != AF_BLUETOOTH)
		return -EINVAL;

	FUNC5(sk);

	if (sk->sk_state != BT_OPEN) {
		err = -EBADFD;
		goto done;
	}

	if (sk->sk_type != SOCK_STREAM) {
		err = -EINVAL;
		goto done;
	}

	FUNC8(&rfcomm_sk_list.lock);

	if (sa->rc_channel && FUNC1(sa->rc_channel, &sa->rc_bdaddr)) {
		err = -EADDRINUSE;
	} else {
		/* Save source address */
		FUNC2(&FUNC4(sk)->src, &sa->rc_bdaddr);
		FUNC7(sk)->channel = sa->rc_channel;
		sk->sk_state = BT_BOUND;
	}

	FUNC9(&rfcomm_sk_list.lock);

done:
	FUNC6(sk);
	return err;
}