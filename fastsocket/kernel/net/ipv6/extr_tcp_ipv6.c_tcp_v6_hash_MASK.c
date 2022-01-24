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
struct sock {scalar_t__ sk_state; } ;
struct TYPE_4__ {int /*<<< orphan*/ * icsk_af_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hash ) (struct sock*) ;} ;

/* Variables and functions */
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  ipv6_mapped ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_1__ tcp_prot ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	if (sk->sk_state != TCP_CLOSE) {
		if (FUNC1(sk)->icsk_af_ops == &ipv6_mapped) {
			tcp_prot.hash(sk);
			return;
		}
		FUNC2();
		FUNC0(sk);
		FUNC3();
	}
}