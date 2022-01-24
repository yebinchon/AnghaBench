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
struct sock {TYPE_1__* sk_prot; } ;
struct inet_sock {int /*<<< orphan*/  num; int /*<<< orphan*/  sport; } ;
struct TYPE_2__ {scalar_t__ (* get_port ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sock *sk)
{
	struct inet_sock *inet;
	/* We may need to bind the socket. */
	FUNC2(sk);
	inet = FUNC1(sk);
	if (!inet->num) {
		if (sk->sk_prot->get_port(sk, 0)) {
			FUNC3(sk);
			return -EAGAIN;
		}
		inet->sport = FUNC0(inet->num);
	}
	FUNC3(sk);
	return 0;
}