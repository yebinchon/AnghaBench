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
 int /*<<< orphan*/  XPT_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int count)
{
	struct svc_sock *svsk = (struct svc_sock *)sk->sk_user_data;

	FUNC0("svc: socket %p TCP data ready (svsk %p)\n",
		sk, sk->sk_user_data);
	if (svsk) {
		FUNC1(XPT_DATA, &svsk->sk_xprt.xpt_flags);
		FUNC2(&svsk->sk_xprt);
	}
	if (sk->sk_sleep && FUNC3(sk->sk_sleep))
		FUNC4(sk->sk_sleep);
}