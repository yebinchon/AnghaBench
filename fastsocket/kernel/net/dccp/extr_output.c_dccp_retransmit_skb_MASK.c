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
struct sock {int /*<<< orphan*/ * sk_send_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  icsk_retransmits; TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {scalar_t__ (* rebuild_header ) (struct sock*) ;} ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*) ; 

int FUNC5(struct sock *sk)
{
	FUNC0(sk->sk_send_head == NULL);

	if (FUNC2(sk)->icsk_af_ops->rebuild_header(sk) != 0)
		return -EHOSTUNREACH; /* Routing failure or similar. */

	/* this count is used to distinguish original and retransmitted skb */
	FUNC2(sk)->icsk_retransmits++;

	return FUNC1(sk, FUNC3(sk->sk_send_head, GFP_ATOMIC));
}