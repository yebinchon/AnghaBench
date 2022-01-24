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
struct tcp_sock {int /*<<< orphan*/  snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int /*<<< orphan*/  loss_cwnd; } ;

/* Variables and functions */
 struct bictcp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static u32 FUNC3(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC2(sk);
	const struct bictcp *ca = FUNC0(sk);
	return FUNC1(tp->snd_cwnd, ca->loss_cwnd);
}