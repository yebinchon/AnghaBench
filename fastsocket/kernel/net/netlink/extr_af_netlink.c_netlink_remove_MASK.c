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
struct sock {size_t sk_protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  entries; } ;
struct TYPE_6__ {TYPE_1__ hash; } ;
struct TYPE_5__ {scalar_t__ subscriptions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* nl_table ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	FUNC1();
	if (FUNC4(sk))
		nl_table[sk->sk_protocol].hash.entries--;
	if (FUNC3(sk)->subscriptions)
		FUNC0(sk);
	FUNC2();
}