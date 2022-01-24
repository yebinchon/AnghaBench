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
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ X25_STATE_3 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static void FUNC6(unsigned long param)
{
	struct sock *sk = (struct sock *)param;

	FUNC0(sk);
	if (FUNC2(sk)) { /* can currently only occur in state 3 */
		if (FUNC4(sk)->state == X25_STATE_3)
			FUNC5(sk);
	} else
		FUNC3(sk);
	FUNC1(sk);
}