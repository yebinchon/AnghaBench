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
typedef  int u32 ;
struct tcp_sock {void* lsndtime; int snd_cwnd; scalar_t__ snd_cwnd_used; void* snd_cwnd_stamp; int /*<<< orphan*/  snd_ssthresh; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  void* s32 ;
struct TYPE_2__ {scalar_t__ icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_EVENT_CWND_RESTART ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct tcp_sock*,struct dst_entry*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 void* tcp_time_stamp ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct dst_entry *dst)
{
	struct tcp_sock *tp = FUNC6(sk);
	s32 delta = tcp_time_stamp - tp->lsndtime;
	u32 restart_cwnd = FUNC5(tp, dst);
	u32 cwnd = tp->snd_cwnd;

	FUNC3(sk, CA_EVENT_CWND_RESTART);

	tp->snd_ssthresh = FUNC4(sk);
	restart_cwnd = FUNC2(restart_cwnd, cwnd);

	while ((delta -= FUNC0(sk)->icsk_rto) > 0 && cwnd > restart_cwnd)
		cwnd >>= 1;
	tp->snd_cwnd = FUNC1(cwnd, restart_cwnd);
	tp->snd_cwnd_stamp = tcp_time_stamp;
	tp->snd_cwnd_used = 0;
}