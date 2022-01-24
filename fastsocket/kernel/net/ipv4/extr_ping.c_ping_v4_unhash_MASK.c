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
struct sock {int /*<<< orphan*/  sk_prot; int /*<<< orphan*/  sk_nulls_node; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ num; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 TYPE_1__ ping_table ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inet_sock*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct inet_sock *isk = FUNC1(sk);
	FUNC2("ping_v4_unhash(isk=%p,isk->num=%u)\n", isk, isk->num);
	if (FUNC3(sk)) {
		FUNC7(&ping_table.lock);
		FUNC0(&sk->sk_nulls_node);
		FUNC6(sk);
		isk->num = 0;
		isk->sport = 0;
		FUNC5(FUNC4(sk), sk->sk_prot, -1);
		FUNC8(&ping_table.lock);
	}
}