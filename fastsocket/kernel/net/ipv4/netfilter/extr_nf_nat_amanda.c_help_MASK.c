#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  port; } ;
struct TYPE_10__ {TYPE_3__ tcp; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct TYPE_12__ {TYPE_5__ dst; } ;
struct TYPE_7__ {int /*<<< orphan*/  port; } ;
struct TYPE_8__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {int /*<<< orphan*/  master; TYPE_6__ tuple; TYPE_2__ saved_proto; int /*<<< orphan*/  expectfn; int /*<<< orphan*/  dir; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  nf_nat_follow_master ; 
 unsigned int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,unsigned int,unsigned int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static unsigned int FUNC7(struct sk_buff *skb,
			 enum ip_conntrack_info ctinfo,
			 unsigned int matchoff,
			 unsigned int matchlen,
			 struct nf_conntrack_expect *exp)
{
	char buffer[sizeof("65535")];
	u_int16_t port;
	unsigned int ret;

	/* Connection comes from client. */
	exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
	exp->dir = IP_CT_DIR_ORIGINAL;

	/* When you see the packet, we need to NAT it the same as the
	 * this one (ie. same IP: it will be TCP and master is UDP). */
	exp->expectfn = nf_nat_follow_master;

	/* Try to get same port: if not, try to change it. */
	for (port = FUNC4(exp->saved_proto.tcp.port); port != 0; port++) {
		exp->tuple.dst.u.tcp.port = FUNC0(port);
		if (FUNC1(exp) == 0)
			break;
	}

	if (port == 0)
		return NF_DROP;

	FUNC5(buffer, "%u", port);
	ret = FUNC3(skb, exp->master, ctinfo,
				       matchoff, matchlen,
				       buffer, FUNC6(buffer));
	if (ret != NF_ACCEPT)
		FUNC2(exp);
	return ret;
}