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
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {scalar_t__ sec_level; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,scalar_t__) ; 
 scalar_t__ BT_SECURITY_SDP ; 
 int ECONNREFUSED ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(unsigned long arg)
{
	struct sock *sk = (struct sock *) arg;
	int reason;

	FUNC0("sock %p state %d", sk, sk->sk_state);

	FUNC2(sk);

	if (sk->sk_state == BT_CONNECTED || sk->sk_state == BT_CONFIG)
		reason = ECONNREFUSED;
	else if (sk->sk_state == BT_CONNECT &&
				FUNC4(sk)->sec_level != BT_SECURITY_SDP)
		reason = ECONNREFUSED;
	else
		reason = ETIMEDOUT;

	FUNC1(sk, reason);

	FUNC3(sk);

	FUNC5(sk);
	FUNC6(sk);
}