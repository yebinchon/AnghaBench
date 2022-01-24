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
struct tcphdr {int dummy; } ;
struct tcp_sock {scalar_t__ snd_cwnd; int srtt; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  snd_nxt; } ;
struct tcp_log {scalar_t__ snd_cwnd; int srtt; int /*<<< orphan*/  ssthresh; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  length; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  sport; int /*<<< orphan*/  saddr; int /*<<< orphan*/  tstamp; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct inet_sock {int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  sport; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {scalar_t__ lastcwnd; int head; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; struct tcp_log* log; } ;

/* Variables and functions */
 int bufsize ; 
 scalar_t__ full ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ port ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 TYPE_1__ tcp_probe ; 
 int FUNC7 () ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_buff *skb,
			       struct tcphdr *th, unsigned len)
{
	const struct tcp_sock *tp = FUNC8(sk);
	const struct inet_sock *inet = FUNC0(sk);

	/* Only update if port matches */
	if ((port == 0 || FUNC3(inet->dport) == port || FUNC3(inet->sport) == port)
	    && (full || tp->snd_cwnd != tcp_probe.lastcwnd)) {

		FUNC4(&tcp_probe.lock);
		/* If log fills, just silently drop */
		if (FUNC7() > 1) {
			struct tcp_log *p = tcp_probe.log + tcp_probe.head;

			p->tstamp = FUNC2();
			p->saddr = inet->saddr;
			p->sport = inet->sport;
			p->daddr = inet->daddr;
			p->dport = inet->dport;
			p->length = skb->len;
			p->snd_nxt = tp->snd_nxt;
			p->snd_una = tp->snd_una;
			p->snd_cwnd = tp->snd_cwnd;
			p->snd_wnd = tp->snd_wnd;
			p->ssthresh = FUNC6(sk);
			p->srtt = tp->srtt >> 3;

			tcp_probe.head = (tcp_probe.head + 1) % bufsize;
		}
		tcp_probe.lastcwnd = tp->snd_cwnd;
		FUNC5(&tcp_probe.lock);

		FUNC9(&tcp_probe.wait);
	}

	FUNC1();
	return 0;
}