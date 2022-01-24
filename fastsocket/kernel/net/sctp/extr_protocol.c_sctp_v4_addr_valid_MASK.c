#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sk_buff {int dummy; } ;
struct sctp_sock {int dummy; } ;
struct TYPE_6__ {int rt_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RTCF_BROADCAST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_sock*) ; 
 TYPE_3__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC4(union sctp_addr *addr,
			      struct sctp_sock *sp,
			      const struct sk_buff *skb)
{
	/* IPv4 addresses not allowed */
	if (sp && FUNC1(FUNC2(sp)))
		return 0;

	/* Is this a non-unicast address or a unusable SCTP address? */
	if (FUNC0(addr->v4.sin_addr.s_addr))
		return 0;

	/* Is this a broadcast address? */
	if (skb && FUNC3(skb)->rt_flags & RTCF_BROADCAST)
		return 0;

	return 1;
}