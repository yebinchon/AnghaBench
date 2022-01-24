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
typedef  int u16 ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int mode; void* sport; void* psm; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int) ; 
 scalar_t__ BT_LISTEN ; 
 int EBADFD ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  L2CAP_MODE_BASIC 130 
#define  L2CAP_MODE_ERTM 129 
#define  L2CAP_MODE_STREAMING 128 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct sock*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  enable_ertm ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 TYPE_1__ l2cap_sk_list ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	int err = 0;

	FUNC0("sk %p backlog %d", sk, backlog);

	FUNC5(sk);

	if (sk->sk_state != BT_BOUND || sock->type != SOCK_SEQPACKET) {
		err = -EBADFD;
		goto done;
	}

	switch (FUNC4(sk)->mode) {
	case L2CAP_MODE_BASIC:
		break;
	case L2CAP_MODE_ERTM:
	case L2CAP_MODE_STREAMING:
		if (enable_ertm)
			break;
		/* fall through */
	default:
		err = -ENOTSUPP;
		goto done;
	}

	if (!FUNC4(sk)->psm) {
		bdaddr_t *src = &FUNC2(sk)->src;
		u16 psm;

		err = -EINVAL;

		FUNC7(&l2cap_sk_list.lock);

		for (psm = 0x1001; psm < 0x1100; psm += 2)
			if (!FUNC1(FUNC3(psm), src)) {
				FUNC4(sk)->psm   = FUNC3(psm);
				FUNC4(sk)->sport = FUNC3(psm);
				err = 0;
				break;
			}

		FUNC8(&l2cap_sk_list.lock);

		if (err < 0)
			goto done;
	}

	sk->sk_max_ack_backlog = backlog;
	sk->sk_ack_backlog = 0;
	sk->sk_state = BT_LISTEN;

done:
	FUNC6(sk);
	return err;
}