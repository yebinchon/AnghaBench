#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; } ;
struct TYPE_5__ {scalar_t__ transparent; } ;
struct TYPE_4__ {scalar_t__ tw_transparent; } ;

/* Variables and functions */
 scalar_t__ TCP_TIME_WAIT ; 
 TYPE_3__* FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static bool FUNC4(struct sock *sk)
{
	if (sk->sk_state != TCP_TIME_WAIT) {
		if (FUNC0(sk)->transparent)
			return true;
		FUNC3(sk);
	} else {
		if (FUNC1(sk)->tw_transparent)
			return true;
		FUNC2(FUNC1(sk));
	}
	return false;
}