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
struct x25_sock {scalar_t__ t21; int /*<<< orphan*/  timer; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct x25_sock* FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct x25_sock *x25 = FUNC1(sk);

	FUNC0(&x25->timer, jiffies + x25->t21);
}