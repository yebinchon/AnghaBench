#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
struct rose_neigh {scalar_t__ dce_mode; int /*<<< orphan*/  queue; scalar_t__ restarted; scalar_t__ loopback; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_P_ROSE ; 
 scalar_t__ FW_ACCEPT ; 
 int /*<<< orphan*/  PF_ROSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC5 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC6 (struct rose_neigh*) ; 
 int /*<<< orphan*/  FUNC7 (struct rose_neigh*) ; 
 unsigned char* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC10(struct sk_buff *skb, struct rose_neigh *neigh)
{
	unsigned char *dptr;

#if 0
	if (call_fw_firewall(PF_ROSE, skb->dev, skb->data, NULL, &skb) != FW_ACCEPT) {
		kfree_skb(skb);
		return;
	}
#endif

	if (neigh->loopback) {
		FUNC3(skb, neigh);
		return;
	}

	if (!FUNC2(neigh))
		neigh->restarted = 0;

	dptr = FUNC8(skb, 1);
	*dptr++ = AX25_P_ROSE;

	if (neigh->restarted) {
		if (!FUNC4(skb, neigh))
			FUNC1(skb);
	} else {
		FUNC9(&neigh->queue, skb);

		if (!FUNC6(neigh)) {
			FUNC7(neigh);
			neigh->dce_mode = 0;
			FUNC5(neigh);
		}
	}
}