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
struct tcphdr {int doff; } ;
struct TYPE_2__ {scalar_t__ tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int TCPOLEN_TSTAMP_ALIGNED ; 
 scalar_t__ FUNC0 (struct tcp_sock*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct tcphdr *th,
				  struct tcp_sock *tp)
{
	if (th->doff == sizeof(struct tcphdr) >> 2) {
		tp->rx_opt.saw_tstamp = 0;
		return 0;
	} else if (tp->rx_opt.tstamp_ok &&
		   th->doff == (sizeof(struct tcphdr)>>2)+(TCPOLEN_TSTAMP_ALIGNED>>2)) {
		if (FUNC0(tp, th))
			return 1;
	}
	FUNC1(skb, &tp->rx_opt, 1);
	return 1;
}