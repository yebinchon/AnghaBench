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
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_2__ base; } ;
struct sctp_chunk {struct sk_buff* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  peer_addr; } ;
struct sctp_association {int temp; TYPE_1__ c; } ;
struct sctp_af {int /*<<< orphan*/  (* from_skb ) (int /*<<< orphan*/ *,struct sk_buff*,int) ;} ;
typedef  int /*<<< orphan*/  sctp_scope_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_association*) ; 
 struct sctp_association* FUNC3 (struct sctp_endpoint const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (int) ; 

struct sctp_association *FUNC9(const struct sctp_endpoint *ep,
					struct sctp_chunk *chunk,
					gfp_t gfp)
{
	struct sctp_association *asoc;
	struct sk_buff *skb;
	sctp_scope_t scope;
	struct sctp_af *af;

	/* Create the bare association.  */
	scope = FUNC5(FUNC6(chunk));
	asoc = FUNC3(ep, ep->base.sk, scope, gfp);
	if (!asoc)
		goto nodata;
	asoc->temp = 1;
	skb = chunk->skb;
	/* Create an entry for the source address of the packet.  */
	af = FUNC4(FUNC1(FUNC0(skb)->version));
	if (FUNC8(!af))
		goto fail;
	af->from_skb(&asoc->c.peer_addr, skb, 1);
nodata:
	return asoc;

fail:
	FUNC2(asoc);
	return NULL;
}