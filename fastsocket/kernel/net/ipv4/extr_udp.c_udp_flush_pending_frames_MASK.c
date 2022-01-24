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
struct udp_sock {scalar_t__ pending; scalar_t__ len; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct udp_sock* FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk)
{
	struct udp_sock *up = FUNC1(sk);

	if (up->pending) {
		up->len = 0;
		up->pending = 0;
		FUNC0(sk);
	}
}