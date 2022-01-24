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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct TYPE_2__ {int /*<<< orphan*/  checksum; } ;
struct pingfakehdr {TYPE_1__ icmph; int /*<<< orphan*/  wcheck; } ;
struct icmphdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct pingfakehdr *pfh)
{
	struct sk_buff *skb = FUNC5(&sk->sk_write_queue);

	pfh->wcheck = FUNC1((char *)&pfh->icmph,
		sizeof(struct icmphdr), pfh->wcheck);
	pfh->icmph.checksum = FUNC0(pfh->wcheck);
	FUNC4(FUNC2(skb), &pfh->icmph, sizeof(struct icmphdr));
	skb->ip_summed = CHECKSUM_NONE;
	return FUNC3(sk);
}