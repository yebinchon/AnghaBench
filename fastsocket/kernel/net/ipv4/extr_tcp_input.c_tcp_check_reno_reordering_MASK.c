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
struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, const int addend)
{
	struct tcp_sock *tp = FUNC1(sk);
	if (FUNC0(tp))
		FUNC2(sk, tp->packets_out + addend, 0);
}