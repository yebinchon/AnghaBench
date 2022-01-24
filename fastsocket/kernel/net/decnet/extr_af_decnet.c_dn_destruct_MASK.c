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
struct sock {int /*<<< orphan*/  sk_dst_cache; } ;
struct dn_scp {int /*<<< orphan*/  other_receive_queue; int /*<<< orphan*/  other_xmit_queue; int /*<<< orphan*/  data_xmit_queue; } ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct dn_scp *scp = FUNC0(sk);

	FUNC2(&scp->data_xmit_queue);
	FUNC2(&scp->other_xmit_queue);
	FUNC2(&scp->other_receive_queue);

	FUNC1(FUNC3(&sk->sk_dst_cache, NULL));
}