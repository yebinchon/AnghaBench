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
struct dccp_sock {int /*<<< orphan*/  dccps_xmit_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct dccp_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct sock *sk = (struct sock *)data;
	struct dccp_sock *dp = FUNC2(sk);

	FUNC0(sk);
	if (FUNC5(sk))
		FUNC4(sk, &dp->dccps_xmit_timer, jiffies+1);
	else
		FUNC3(sk, 0);
	FUNC1(sk);
	FUNC6(sk);
}