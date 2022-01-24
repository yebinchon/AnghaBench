#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_2__* sk; } ;
struct rfcomm_session {scalar_t__ mtu; struct socket* sock; } ;
struct TYPE_7__ {int /*<<< orphan*/  accept_q; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_data_ready; } ;
struct TYPE_5__ {int /*<<< orphan*/  imtu; int /*<<< orphan*/  omtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*) ; 
 int /*<<< orphan*/  BT_OPEN ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  RFCOMM_SCHED_RX ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct socket*,struct socket**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rfcomm_l2data_ready ; 
 int /*<<< orphan*/  rfcomm_l2state_change ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct rfcomm_session* FUNC7 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

__attribute__((used)) static inline void FUNC10(struct rfcomm_session *s)
{
	struct socket *sock = s->sock, *nsock;
	int err;

	/* Fast check for a new connection.
	 * Avoids unnesesary socket allocations. */
	if (FUNC4(&FUNC1(sock->sk)->accept_q))
		return;

	FUNC0("session %p", s);

	err = FUNC2(sock, &nsock, O_NONBLOCK);
	if (err < 0)
		return;

	/* Set our callbacks */
	nsock->sk->sk_data_ready   = rfcomm_l2data_ready;
	nsock->sk->sk_state_change = rfcomm_l2state_change;

	s = FUNC7(nsock, BT_OPEN);
	if (s) {
		FUNC8(s);

		/* We should adjust MTU on incoming sessions.
		 * L2CAP MTU minus UIH header and FCS. */
		s->mtu = FUNC5(FUNC3(nsock->sk)->omtu, FUNC3(nsock->sk)->imtu) - 5;

		FUNC6(RFCOMM_SCHED_RX);
	} else
		FUNC9(nsock);
}