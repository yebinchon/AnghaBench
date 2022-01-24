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
struct sk_buff {scalar_t__ sk; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct rxrpc_skb_priv {struct rxrpc_call* call; TYPE_1__ hdr; } ;
struct rxrpc_call {int dummy; } ;

/* Variables and functions */
 scalar_t__ RXRPC_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*,struct rxrpc_skb_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 struct rxrpc_skb_priv* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

void FUNC6(struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC4(skb);
	struct rxrpc_call *call = sp->call;

	FUNC0("%p{%p}", skb, call);

	if (call) {
		/* send the final ACK on a client call */
		if (sp->hdr.type == RXRPC_PACKET_TYPE_DATA)
			FUNC2(call, sp);
		FUNC3(call);
		sp->call = NULL;
	}

	if (skb->sk)
		FUNC5(skb);
	FUNC1("");
}