#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  key; } ;
struct TYPE_12__ {TYPE_4__ gre; scalar_t__ all; } ;
struct TYPE_13__ {TYPE_5__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
struct TYPE_9__ {TYPE_1__ gre; scalar_t__ all; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ src; TYPE_3__ dst; } ;
struct net {int dummy; } ;
struct gre_hdr_pptp {scalar_t__ version; int /*<<< orphan*/  call_id; int /*<<< orphan*/  protocol; } ;
struct gre_hdr {scalar_t__ version; int /*<<< orphan*/  call_id; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  _grehdr ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_14__ {scalar_t__ dev; } ;

/* Variables and functions */
 scalar_t__ GRE_PROTOCOL_PPTP ; 
 scalar_t__ GRE_VERSION_PPTP ; 
 struct net* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,struct nf_conntrack_tuple*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_7__* FUNC4 (struct sk_buff const*) ; 
 struct gre_hdr_pptp* FUNC5 (struct sk_buff const*,unsigned int,int,struct gre_hdr_pptp*) ; 

__attribute__((used)) static bool FUNC6(const struct sk_buff *skb, unsigned int dataoff,
			     struct nf_conntrack_tuple *tuple)
{
	struct net *net = FUNC0(skb->dev ? skb->dev : FUNC4(skb)->dev);
	const struct gre_hdr_pptp *pgrehdr;
	struct gre_hdr_pptp _pgrehdr;
	__be16 srckey;
	const struct gre_hdr *grehdr;
	struct gre_hdr _grehdr;

	/* first only delinearize old RFC1701 GRE header */
	grehdr = FUNC5(skb, dataoff, sizeof(_grehdr), &_grehdr);
	if (!grehdr || grehdr->version != GRE_VERSION_PPTP) {
		/* try to behave like "nf_conntrack_proto_generic" */
		tuple->src.u.all = 0;
		tuple->dst.u.all = 0;
		return true;
	}

	/* PPTP header is variable length, only need up to the call_id field */
	pgrehdr = FUNC5(skb, dataoff, 8, &_pgrehdr);
	if (!pgrehdr)
		return true;

	if (FUNC2(grehdr->protocol) != GRE_PROTOCOL_PPTP) {
		FUNC3("GRE_VERSION_PPTP but unknown proto\n");
		return false;
	}

	tuple->dst.u.gre.key = pgrehdr->call_id;
	srckey = FUNC1(net, tuple);
	tuple->src.u.gre.key = srckey;

	return true;
}