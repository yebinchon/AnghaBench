#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int transport_header; } ;
struct TYPE_7__ {scalar_t__ high_thresh; int /*<<< orphan*/  mem; } ;
struct TYPE_8__ {TYPE_1__ frags; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {scalar_t__ payload_len; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct frag_queue {TYPE_5__ q; } ;
struct frag_hdr {int frag_off; int /*<<< orphan*/  identification; } ;
struct TYPE_11__ {int /*<<< orphan*/ * nhoff; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMOKS ; 
 int /*<<< orphan*/  IPSTATS_MIB_REASMREQDS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 
 struct frag_queue* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_frags ; 
 struct ipv6hdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 TYPE_3__* FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb)
{
	struct frag_hdr *fhdr;
	struct frag_queue *fq;
	struct ipv6hdr *hdr = FUNC12(skb);
	struct net *net = FUNC4(FUNC15(skb)->dev);

	FUNC2(net, FUNC9(FUNC15(skb)), IPSTATS_MIB_REASMREQDS);

	/* Jumbo payload inhibits frag. header */
	if (hdr->payload_len==0)
		goto fail_hdr;

	if (!FUNC14(skb, (FUNC19(skb) +
				 sizeof(struct frag_hdr))))
		goto fail_hdr;

	hdr = FUNC12(skb);
	fhdr = (struct frag_hdr *)FUNC18(skb);

	if (!(fhdr->frag_off & FUNC6(0xFFF9))) {
		/* It is not a fragmented frame */
		skb->transport_header += sizeof(struct frag_hdr);
		FUNC2(net,
				 FUNC9(FUNC15(skb)), IPSTATS_MIB_REASMOKS);

		FUNC0(skb)->nhoff = (u8 *)fhdr - FUNC16(skb);
		return 1;
	}

	if (FUNC3(&net->ipv6.frags.mem) > net->ipv6.frags.high_thresh)
		FUNC10(net, FUNC9(FUNC15(skb)));

	if ((fq = FUNC5(net, fhdr->identification, &hdr->saddr, &hdr->daddr,
			  FUNC9(FUNC15(skb)))) != NULL) {
		int ret;

		FUNC20(&fq->q.lock);

		ret = FUNC11(fq, skb, fhdr, FUNC0(skb)->nhoff);

		FUNC21(&fq->q.lock);
		FUNC8(&fq->q, &ip6_frags);
		return ret;
	}

	FUNC2(net, FUNC9(FUNC15(skb)), IPSTATS_MIB_REASMFAILS);
	FUNC13(skb);
	return -1;

fail_hdr:
	FUNC1(net, FUNC9(FUNC15(skb)), IPSTATS_MIB_INHDRERRORS);
	FUNC7(skb, ICMPV6_HDR_FIELD, FUNC17(skb));
	return -1;
}