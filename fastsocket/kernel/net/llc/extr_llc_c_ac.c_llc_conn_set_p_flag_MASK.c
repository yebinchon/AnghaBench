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
typedef  scalar_t__ u8 ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct TYPE_2__ {scalar_t__ p_flag; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk, u8 value)
{
	int state_changed = FUNC0(sk)->p_flag && !value;

	FUNC0(sk)->p_flag = value;

	if (state_changed)
		sk->sk_state_change(sk);
}