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
struct sock {TYPE_2__* sk_prot; } ;
struct raw_hashinfo {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct raw_hashinfo* raw_hash; } ;
struct TYPE_4__ {TYPE_1__ h; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sock *sk)
{
	struct raw_hashinfo *h = sk->sk_prot->h.raw_hash;

	FUNC3(&h->lock);
	if (FUNC0(sk))
		FUNC2(FUNC1(sk), sk->sk_prot, -1);
	FUNC4(&h->lock);
}