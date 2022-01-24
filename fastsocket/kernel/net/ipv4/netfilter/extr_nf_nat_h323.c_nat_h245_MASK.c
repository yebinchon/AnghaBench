#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_16__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct sk_buff {int dummy; } ;
struct nf_ct_h323_master {scalar_t__* sig_port; } ;
struct TYPE_19__ {scalar_t__ port; } ;
struct TYPE_20__ {TYPE_12__ tcp; } ;
struct TYPE_18__ {int /*<<< orphan*/  ip; } ;
struct TYPE_21__ {TYPE_13__ u; TYPE_11__ u3; } ;
struct TYPE_31__ {scalar_t__ port; } ;
struct TYPE_32__ {TYPE_8__ tcp; } ;
struct TYPE_30__ {int /*<<< orphan*/  ip; } ;
struct TYPE_17__ {TYPE_9__ u; TYPE_7__ u3; } ;
struct TYPE_22__ {TYPE_14__ dst; TYPE_10__ src; } ;
struct TYPE_25__ {scalar_t__ port; } ;
struct TYPE_26__ {TYPE_2__ tcp; } ;
struct nf_conntrack_expect {int dir; TYPE_15__ tuple; int /*<<< orphan*/  expectfn; TYPE_3__ saved_proto; } ;
struct nf_conn {TYPE_6__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  scalar_t__ __be16 ;
typedef  int /*<<< orphan*/  TransportAddress ;
struct TYPE_27__ {int /*<<< orphan*/  u3; } ;
struct TYPE_28__ {TYPE_4__ dst; } ;
struct TYPE_29__ {TYPE_5__ tuple; } ;
struct TYPE_24__ {struct nf_ct_h323_master ct_h323_info; } ;
struct TYPE_23__ {TYPE_1__ help; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  nf_nat_follow_master ; 
 TYPE_16__* FUNC5 (struct nf_conn*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,unsigned char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct nf_conn *ct,
		    enum ip_conntrack_info ctinfo,
		    unsigned char **data, int dataoff,
		    TransportAddress *taddr, __be16 port,
		    struct nf_conntrack_expect *exp)
{
	struct nf_ct_h323_master *info = &FUNC5(ct)->help.ct_h323_info;
	int dir = FUNC0(ctinfo);
	u_int16_t nated_port = FUNC6(port);

	/* Set expectations for NAT */
	exp->saved_proto.tcp.port = exp->tuple.dst.u.tcp.port;
	exp->expectfn = nf_nat_follow_master;
	exp->dir = !dir;

	/* Check existing expects */
	if (info->sig_port[dir] == port)
		nated_port = FUNC6(info->sig_port[!dir]);

	/* Try to get same port: if not, try to change it. */
	for (; nated_port != 0; nated_port++) {
		exp->tuple.dst.u.tcp.port = FUNC1(nated_port);
		if (FUNC3(exp) == 0)
			break;
	}

	if (nated_port == 0) {	/* No port available */
		if (FUNC2())
			FUNC8("nf_nat_q931: out of TCP ports\n");
		return 0;
	}

	/* Modify signal */
	if (FUNC9(skb, data, dataoff, taddr,
			  &ct->tuplehash[!dir].tuple.dst.u3,
			  FUNC1(nated_port)) == 0) {
		/* Save ports */
		info->sig_port[dir] = port;
		info->sig_port[!dir] = FUNC1(nated_port);
	} else {
		FUNC4(exp);
		return -1;
	}

	FUNC7("nf_nat_q931: expect H.245 %pI4:%hu->%pI4:%hu\n",
		 &exp->tuple.src.u3.ip,
		 FUNC6(exp->tuple.src.u.tcp.port),
		 &exp->tuple.dst.u3.ip,
		 FUNC6(exp->tuple.dst.u.tcp.port));

	return 0;
}