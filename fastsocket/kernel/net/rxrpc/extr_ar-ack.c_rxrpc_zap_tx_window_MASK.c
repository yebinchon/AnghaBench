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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int acks_winsz; unsigned long* acks_window; int acks_tail; int /*<<< orphan*/  acks_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct rxrpc_skb_priv* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct rxrpc_call *call)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *skb;
	unsigned long _skb, *acks_window;
	u8 winsz = call->acks_winsz;
	int tail;

	acks_window = call->acks_window;
	call->acks_window = NULL;

	while (FUNC0(call->acks_head, call->acks_tail, winsz) > 0) {
		tail = call->acks_tail;
		FUNC7();
		_skb = acks_window[tail] & ~1;
		FUNC6();
		call->acks_tail = (call->acks_tail + 1) & (winsz - 1);

		skb = (struct sk_buff *) _skb;
		sp = FUNC5(skb);
		FUNC1("+++ clear Tx %u", FUNC3(sp->hdr.seq));
		FUNC4(skb);
	}

	FUNC2(acks_window);
}