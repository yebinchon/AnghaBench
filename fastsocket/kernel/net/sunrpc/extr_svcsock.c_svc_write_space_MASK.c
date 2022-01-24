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
struct TYPE_2__ {int /*<<< orphan*/  xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; } ;
struct sock {scalar_t__ sk_sleep; scalar_t__ sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct svc_sock*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct svc_sock	*svsk = (struct svc_sock *)(sk->sk_user_data);

	if (svsk) {
		FUNC0("svc: socket %p(inet %p), write_space busy=%d\n",
			svsk, sk, FUNC2(XPT_BUSY, &svsk->sk_xprt.xpt_flags));
		FUNC1(&svsk->sk_xprt);
	}

	if (sk->sk_sleep && FUNC3(sk->sk_sleep)) {
		FUNC0("RPC svc_write_space: someone sleeping on %p\n",
		       svsk);
		FUNC4(sk->sk_sleep);
	}
}