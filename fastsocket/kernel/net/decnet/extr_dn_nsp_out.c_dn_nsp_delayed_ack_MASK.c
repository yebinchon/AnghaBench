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
struct dn_scp {scalar_t__ ackxmt_oth; scalar_t__ numoth_rcv; scalar_t__ ackxmt_dat; scalar_t__ numdat_rcv; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	if (scp->ackxmt_oth != scp->numoth_rcv)
		FUNC2(sk);

	if (scp->ackxmt_dat != scp->numdat_rcv)
		FUNC1(sk);
}