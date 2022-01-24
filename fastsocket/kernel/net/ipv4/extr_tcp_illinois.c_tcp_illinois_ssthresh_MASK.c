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
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct illinois {int beta; } ;

/* Variables and functions */
 int BETA_SHIFT ; 
 struct illinois* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct illinois *ca = FUNC0(sk);

	/* Multiplicative decrease */
	return FUNC1(tp->snd_cwnd - ((tp->snd_cwnd * ca->beta) >> BETA_SHIFT), 2U);
}