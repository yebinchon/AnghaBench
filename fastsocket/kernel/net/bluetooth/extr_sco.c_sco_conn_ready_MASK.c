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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int) ;void* sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sco_conn {int /*<<< orphan*/  hcon; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; struct sock* sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_SCO ; 
 void* BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sco_conn*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sco_conn*,struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct sco_conn*) ; 
 struct sock* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int) ; 

__attribute__((used)) static void FUNC16(struct sco_conn *conn)
{
	struct sock *parent, *sk;

	FUNC0("conn %p", conn);

	FUNC7(conn);

	if ((sk = conn->sk)) {
		FUNC11(sk);
		FUNC3(sk);
		sk->sk_state = BT_CONNECTED;
		sk->sk_state_change(sk);
		FUNC4(sk);
	} else {
		parent = FUNC9(conn->src);
		if (!parent)
			goto done;

		FUNC3(parent);

		sk = FUNC10(FUNC13(parent), NULL, BTPROTO_SCO, GFP_ATOMIC);
		if (!sk) {
			FUNC4(parent);
			goto done;
		}

		FUNC12(sk, parent);

		FUNC2(&FUNC5(sk)->src, conn->src);
		FUNC2(&FUNC5(sk)->dst, conn->dst);

		FUNC6(conn->hcon);
		FUNC1(conn, sk, parent);

		sk->sk_state = BT_CONNECTED;

		/* Wake up parent */
		parent->sk_data_ready(parent, 1);

		FUNC4(parent);
	}

done:
	FUNC8(conn);
}