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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {unsigned int snd_cwnd; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 

u32 FUNC2(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC1(sk);
	return FUNC0(tp->snd_cwnd >> 1U, 2U);
}