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
typedef  scalar_t__ u_char ;
struct sock {int dummy; } ;
struct inet_sock {int mc_loop; } ;

/* Variables and functions */
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, u_char loop)
{
	struct inet_sock *inet = FUNC0(sk);

	/* setsockopt(sock, SOL_IP, IP_MULTICAST_LOOP, &loop, sizeof(loop)); */
	FUNC1(sk);
	inet->mc_loop = loop ? 1 : 0;
	FUNC2(sk);
}