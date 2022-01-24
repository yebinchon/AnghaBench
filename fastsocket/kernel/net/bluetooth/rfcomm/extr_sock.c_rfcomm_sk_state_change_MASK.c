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
struct sock {int sk_err; scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;} ;
struct rfcomm_dlc {scalar_t__ state; int /*<<< orphan*/  session; struct sock* owner; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; struct sock* parent; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,scalar_t__,int) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 

__attribute__((used)) static void FUNC13(struct rfcomm_dlc *d, int err)
{
	struct sock *sk = d->owner, *parent;
	if (!sk)
		return;

	FUNC0("dlc %p state %ld err %d", d, d->state, err);

	FUNC1(sk);

	if (err)
		sk->sk_err = err;

	sk->sk_state = d->state;

	parent = FUNC4(sk)->parent;
	if (parent) {
		if (d->state == BT_CLOSED) {
			FUNC10(sk, SOCK_ZAPPED);
			FUNC3(sk);
		}
		parent->sk_data_ready(parent, 0);
	} else {
		if (d->state == BT_CONNECTED)
			FUNC7(d->session, &FUNC4(sk)->src, NULL);
		sk->sk_state_change(sk);
	}

	FUNC2(sk);

	if (parent && FUNC9(sk, SOCK_ZAPPED)) {
		/* We have to drop DLC lock here, otherwise
		 * rfcomm_sock_destruct() will dead lock. */
		FUNC6(d);
		FUNC8(sk);
		FUNC5(d);
	}
}