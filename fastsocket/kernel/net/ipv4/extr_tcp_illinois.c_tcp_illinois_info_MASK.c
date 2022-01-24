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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct tcpvegas_info {int tcpv_enabled; scalar_t__ tcpv_rttcnt; int /*<<< orphan*/  tcpv_rtt; int /*<<< orphan*/  tcpv_minrtt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct illinois {scalar_t__ cnt_rtt; int /*<<< orphan*/  sum_rtt; int /*<<< orphan*/  base_rtt; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int INET_DIAG_VEGASINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct illinois* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int,struct tcpvegas_info*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, u32 ext,
			      struct sk_buff *skb)
{
	const struct illinois *ca = FUNC1(sk);

	if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
		struct tcpvegas_info info = {
			.tcpv_enabled = 1,
			.tcpv_rttcnt = ca->cnt_rtt,
			.tcpv_minrtt = ca->base_rtt,
		};

		if (info.tcpv_rttcnt > 0) {
			u64 t = ca->sum_rtt;

			FUNC0(t, info.tcpv_rttcnt);
			info.tcpv_rtt = t;
		}
		FUNC2(skb, INET_DIAG_VEGASINFO, sizeof(info), &info);
	}
}