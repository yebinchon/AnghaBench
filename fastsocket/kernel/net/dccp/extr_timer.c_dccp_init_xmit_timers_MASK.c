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

/* Variables and functions */
 int /*<<< orphan*/  dccp_delack_timer ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  dccp_keepalive_timer ; 
 int /*<<< orphan*/  dccp_write_timer ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct sock *sk)
{
	FUNC0(sk);
	FUNC1(sk, &dccp_write_timer, &dccp_delack_timer,
				  &dccp_keepalive_timer);
}