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
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_delack_timer ; 
 int /*<<< orphan*/  tcp_keepalive_timer ; 
 int /*<<< orphan*/  tcp_write_timer ; 

void FUNC1(struct sock *sk)
{
	FUNC0(sk, &tcp_write_timer, &tcp_delack_timer,
				  &tcp_keepalive_timer);
}