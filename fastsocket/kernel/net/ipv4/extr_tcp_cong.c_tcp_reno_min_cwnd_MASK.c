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
typedef  int u32 ;
struct tcp_sock {int snd_ssthresh; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct tcp_sock* FUNC0 (struct sock const*) ; 

u32 FUNC1(const struct sock *sk)
{
	const struct tcp_sock *tp = FUNC0(sk);
	return tp->snd_ssthresh/2;
}