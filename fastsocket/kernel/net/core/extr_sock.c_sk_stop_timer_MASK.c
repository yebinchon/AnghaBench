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
struct timer_list {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct timer_list*) ; 
 scalar_t__ FUNC2 (struct timer_list*) ; 

void FUNC3(struct sock *sk, struct timer_list* timer)
{
	if (FUNC2(timer) && FUNC1(timer))
		FUNC0(sk);
}