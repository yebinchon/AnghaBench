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
struct westwood {int /*<<< orphan*/  rtt_min; int /*<<< orphan*/  rtt; } ;
struct tcpvegas_info {int tcpv_enabled; int /*<<< orphan*/  tcpv_minrtt; int /*<<< orphan*/  tcpv_rtt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int INET_DIAG_VEGASINFO ; 
 struct westwood* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int,struct tcpvegas_info*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, u32 ext,
			      struct sk_buff *skb)
{
	const struct westwood *ca = FUNC0(sk);
	if (ext & (1 << (INET_DIAG_VEGASINFO - 1))) {
		struct tcpvegas_info info = {
			.tcpv_enabled = 1,
			.tcpv_rtt = FUNC1(ca->rtt),
			.tcpv_minrtt = FUNC1(ca->rtt_min),
		};

		FUNC2(skb, INET_DIAG_VEGASINFO, sizeof(info), &info);
	}
}