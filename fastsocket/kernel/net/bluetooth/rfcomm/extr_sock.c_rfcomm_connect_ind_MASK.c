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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_ack_backlog; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {scalar_t__ defer_setup; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_RFCOMM ; 
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sock*) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 struct sock* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sock* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sock*) ; 
 scalar_t__ FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 

int FUNC13(struct rfcomm_session *s, u8 channel, struct rfcomm_dlc **d)
{
	struct sock *sk, *parent;
	bdaddr_t src, dst;
	int result = 0;

	FUNC0("session %p channel %d", s, channel);

	FUNC7(s, &src, &dst);

	/* Check if we have socket listening on channel */
	parent = FUNC5(BT_LISTEN, channel, &src);
	if (!parent)
		return 0;

	/* Check for backlog size */
	if (FUNC10(parent)) {
		FUNC0("backlog full %d", parent->sk_ack_backlog);
		goto done;
	}

	sk = FUNC8(FUNC11(parent), NULL, BTPROTO_RFCOMM, GFP_ATOMIC);
	if (!sk)
		goto done;

	FUNC9(sk, parent);
	FUNC1(&FUNC4(sk)->src, &src);
	FUNC1(&FUNC4(sk)->dst, &dst);
	FUNC6(sk)->channel = channel;

	sk->sk_state = BT_CONFIG;
	FUNC3(parent, sk);

	/* Accept connection and return socket DLC */
	*d = FUNC6(sk)->dlc;
	result = 1;

done:
	FUNC2(parent);

	if (FUNC4(parent)->defer_setup)
		parent->sk_state_change(parent);

	return result;
}