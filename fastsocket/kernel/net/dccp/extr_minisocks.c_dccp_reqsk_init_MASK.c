#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_featneg; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_featneg; scalar_t__ dreq_timestamp_echo; } ;
struct TYPE_4__ {int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
struct TYPE_3__ {scalar_t__ acked; int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct sk_buff const*) ; 
 struct dccp_request_sock* FUNC2 (struct request_sock*) ; 
 TYPE_1__* FUNC3 (struct request_sock*) ; 

int FUNC4(struct request_sock *req,
		    struct dccp_sock const *dp, struct sk_buff const *skb)
{
	struct dccp_request_sock *dreq = FUNC2(req);

	FUNC3(req)->rmt_port	  = FUNC1(skb)->dccph_sport;
	FUNC3(req)->loc_port	  = FUNC1(skb)->dccph_dport;
	FUNC3(req)->acked	  = 0;
	dreq->dreq_timestamp_echo = 0;

	/* inherit feature negotiation options from listening socket */
	return FUNC0(&dp->dccps_featneg, &dreq->dreq_featneg);
}