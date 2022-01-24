#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dsack; } ;
struct tcp_sock {int /*<<< orphan*/  duplicate_sack; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, u32 seq, u32 end_seq)
{
	struct tcp_sock *tp = FUNC2(sk);

	if (!tp->rx_opt.dsack)
		FUNC0(sk, seq, end_seq);
	else
		FUNC1(tp->duplicate_sack, seq, end_seq);
}