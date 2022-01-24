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
struct yeah {scalar_t__ doing_reno_now; int lastQ; int reno_count; scalar_t__ fast_count; } ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 unsigned int TCP_YEAH_DELTA ; 
 scalar_t__ TCP_YEAH_RHO ; 
 struct yeah* FUNC0 (struct sock*) ; 
 void* FUNC1 (int,unsigned int) ; 
 int FUNC2 (int,void*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static u32 FUNC4(struct sock *sk) {
	const struct tcp_sock *tp = FUNC3(sk);
	struct yeah *yeah = FUNC0(sk);
	u32 reduction;

	if (yeah->doing_reno_now < TCP_YEAH_RHO) {
		reduction = yeah->lastQ;

		reduction = FUNC2( reduction, FUNC1(tp->snd_cwnd>>1, 2U) );

		reduction = FUNC1( reduction, tp->snd_cwnd >> TCP_YEAH_DELTA);
	} else
		reduction = FUNC1(tp->snd_cwnd>>1, 2U);

	yeah->fast_count = 0;
	yeah->reno_count = FUNC1(yeah->reno_count>>1, 2U);

	return tp->snd_cwnd - reduction;
}