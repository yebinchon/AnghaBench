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
struct sock {int dummy; } ;
struct inet_timewait_death_row {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __inet6_check_established ; 
 int /*<<< orphan*/  __inet6_hash ; 
 int FUNC0 (struct inet_timewait_death_row*,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

int FUNC2(struct inet_timewait_death_row *death_row,
		       struct sock *sk)
{
	return FUNC0(death_row, sk, FUNC1(sk),
			__inet6_check_established, __inet6_hash);
}