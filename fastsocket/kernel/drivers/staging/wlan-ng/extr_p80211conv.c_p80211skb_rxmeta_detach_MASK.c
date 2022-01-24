#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  p80211_rxmeta_t ;
struct TYPE_3__ {int /*<<< orphan*/ * rx; } ;
typedef  TYPE_1__ p80211_frmmeta_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct sk_buff *skb)
{
	p80211_rxmeta_t *rxmeta;
	p80211_frmmeta_t *frmmeta;

	/* Sanity checks */
	if (skb == NULL) {	/* bad skb */
		FUNC3("Called w/ null skb.\n");
		goto exit;
	}
	frmmeta = FUNC0(skb);
	if (frmmeta == NULL) {	/* no magic */
		FUNC3("Called w/ bad frmmeta magic.\n");
		goto exit;
	}
	rxmeta = frmmeta->rx;
	if (rxmeta == NULL) {	/* bad meta ptr */
		FUNC3("Called w/ bad rxmeta ptr.\n");
		goto exit;
	}

	/* Free rxmeta */
	FUNC1(rxmeta);

	/* Clear skb->cb */
	FUNC2(skb->cb, 0, sizeof(skb->cb));
exit:
	return;
}