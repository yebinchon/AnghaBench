#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  port; } ;
struct TYPE_17__ {TYPE_3__ tcp; } ;
struct TYPE_18__ {TYPE_4__ u; } ;
struct TYPE_19__ {TYPE_5__ dst; } ;
struct TYPE_14__ {int /*<<< orphan*/  port; } ;
struct TYPE_15__ {TYPE_1__ tcp; } ;
struct nf_conntrack_expect {size_t dir; TYPE_11__* master; TYPE_6__ tuple; TYPE_2__ saved_proto; int /*<<< orphan*/  expectfn; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_20__ {int /*<<< orphan*/  ip; } ;
struct TYPE_21__ {TYPE_7__ u3; } ;
struct TYPE_22__ {TYPE_8__ dst; } ;
struct TYPE_13__ {TYPE_10__* tuplehash; } ;
struct TYPE_12__ {TYPE_9__ tuple; } ;

/* Variables and functions */
 size_t IP_CT_DIR_REPLY ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  nf_nat_follow_master ; 
 unsigned int FUNC3 (struct sk_buff*,TYPE_11__*,int,unsigned int,unsigned int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static unsigned int FUNC9(struct sk_buff *skb,
			 enum ip_conntrack_info ctinfo,
			 unsigned int matchoff,
			 unsigned int matchlen,
			 struct nf_conntrack_expect *exp)
{
	char buffer[sizeof("4294967296 65635")];
	u_int32_t ip;
	u_int16_t port;
	unsigned int ret;

	/* Reply comes from server. */
	exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
	exp->dir = IP_CT_DIR_REPLY;
	exp->expectfn = nf_nat_follow_master;

	/* Try to get same port: if not, try to change it. */
	for (port = FUNC5(exp->saved_proto.tcp.port); port != 0; port++) {
		exp->tuple.dst.u.tcp.port = FUNC0(port);
		if (FUNC1(exp) == 0)
			break;
	}

	if (port == 0)
		return NF_DROP;

	ip = FUNC4(exp->master->tuplehash[IP_CT_DIR_REPLY].tuple.dst.u3.ip);
	FUNC7(buffer, "%u %u", ip, port);
	FUNC6("nf_nat_irc: inserting '%s' == %pI4, port %u\n",
		 buffer, &ip, port);

	ret = FUNC3(skb, exp->master, ctinfo,
				       matchoff, matchlen, buffer,
				       FUNC8(buffer));
	if (ret != NF_ACCEPT)
		FUNC2(exp);
	return ret;
}