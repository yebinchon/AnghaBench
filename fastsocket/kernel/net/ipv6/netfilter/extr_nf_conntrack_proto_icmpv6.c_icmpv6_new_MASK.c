#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  valid_new ;
typedef  int u_int8_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {TYPE_4__* tuplehash; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_1__ icmp; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ dst; } ;
struct TYPE_9__ {TYPE_5__ tuple; } ;

/* Variables and functions */
#define  ICMPV6_ECHO_REQUEST 129 
#define  ICMPV6_NI_QUERY 128 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static bool FUNC5(struct nf_conn *ct, const struct sk_buff *skb,
		       unsigned int dataoff)
{
	static const u_int8_t valid_new[] = {
		[ICMPV6_ECHO_REQUEST - 128] = 1,
		[ICMPV6_NI_QUERY - 128] = 1
	};
	int type = ct->tuplehash[0].tuple.dst.u.icmp.type - 128;

	if (type < 0 || type >= sizeof(valid_new) || !valid_new[type]) {
		/* Can't create a new ICMPv6 `conn' with this. */
		FUNC4("icmpv6: can't create new conn with type %u\n",
			 type + 128);
		FUNC1(&ct->tuplehash[0].tuple);
		if (FUNC0(FUNC2(ct), IPPROTO_ICMPV6))
			FUNC3(PF_INET6, 0, skb, NULL, NULL, NULL,
				      "nf_ct_icmpv6: invalid new with type %d ",
				      type + 128);
		return false;
	}
	return true;
}