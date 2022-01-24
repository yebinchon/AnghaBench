#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct dn_scp {int /*<<< orphan*/  other_xmit_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DN_NOCHANGE ; 
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	/*
	 * By checking the other_data transmit queue is empty
	 * we are double checking that we are not sending too
	 * many of these keepalive frames.
	 */
	if (FUNC2(&scp->other_xmit_queue))
		FUNC1(sk, DN_NOCHANGE, 0);
}