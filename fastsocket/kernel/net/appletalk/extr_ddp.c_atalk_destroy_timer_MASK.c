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
struct TYPE_2__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;

/* Variables and functions */
 scalar_t__ SOCK_DESTROY_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct sock *sk = (struct sock *)data;

	if (FUNC1(sk)) {
		sk->sk_timer.expires = jiffies + SOCK_DESTROY_TIME;
		FUNC0(&sk->sk_timer);
	} else
		FUNC2(sk);
}