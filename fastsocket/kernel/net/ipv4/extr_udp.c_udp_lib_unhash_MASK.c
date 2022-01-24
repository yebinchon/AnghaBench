#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udp_table {struct udp_hslot* hash; } ;
struct udp_hslot {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_2__* sk_prot; int /*<<< orphan*/  sk_hash; } ;
struct TYPE_6__ {scalar_t__ num; } ;
struct TYPE_4__ {struct udp_table* udp_table; } ;
struct TYPE_5__ {TYPE_1__ h; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct sock *sk)
{
	if (FUNC1(sk)) {
		struct udp_table *udptable = sk->sk_prot->h.udp_table;
		unsigned int hash = FUNC7(FUNC3(sk), sk->sk_hash);
		struct udp_hslot *hslot = &udptable->hash[hash];

		FUNC5(&hslot->lock);
		if (FUNC2(sk)) {
			FUNC0(sk)->num = 0;
			FUNC4(FUNC3(sk), sk->sk_prot, -1);
		}
		FUNC6(&hslot->lock);
	}
}