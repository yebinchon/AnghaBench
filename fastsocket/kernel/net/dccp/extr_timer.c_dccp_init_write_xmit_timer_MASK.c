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
 struct dccp_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  dccp_write_xmit_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct sock *sk)
{
	struct dccp_sock *dp = FUNC0(sk);

	FUNC1(&dp->dccps_xmit_timer, dccp_write_xmit_timer,
			(unsigned long)sk);
}