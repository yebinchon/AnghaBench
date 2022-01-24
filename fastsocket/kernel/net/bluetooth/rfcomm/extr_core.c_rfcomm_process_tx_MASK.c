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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct rfcomm_dlc {int cfc; int rx_credits; int tx_credits; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  flags; int /*<<< orphan*/  session; int /*<<< orphan*/  addr; int /*<<< orphan*/  v24_sig; int /*<<< orphan*/  dlci; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  RFCOMM_MSC_PENDING ; 
 int /*<<< orphan*/  RFCOMM_RX_THROTTLED ; 
 int /*<<< orphan*/  RFCOMM_TX_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC11(struct rfcomm_dlc *d)
{
	struct sk_buff *skb;
	int err;

	FUNC0("dlc %p state %ld cfc %d rx_credits %d tx_credits %d",
			d, d->state, d->cfc, d->rx_credits, d->tx_credits);

	/* Send pending MSC */
	if (FUNC9(RFCOMM_MSC_PENDING, &d->flags))
		FUNC4(d->session, 1, d->dlci, d->v24_sig);

	if (d->cfc) {
		/* CFC enabled.
		 * Give them some credits */
		if (!FUNC10(RFCOMM_RX_THROTTLED, &d->flags) &&
				d->rx_credits <= (d->cfc >> 2)) {
			FUNC2(d->session, d->addr, d->cfc - d->rx_credits);
			d->rx_credits = d->cfc;
		}
	} else {
		/* CFC disabled.
		 * Give ourselves some credits */
		d->tx_credits = 5;
	}

	if (FUNC10(RFCOMM_TX_THROTTLED, &d->flags))
		return FUNC8(&d->tx_queue);

	while (d->tx_credits && (skb = FUNC6(&d->tx_queue))) {
		err = FUNC3(d->session, skb->data, skb->len);
		if (err < 0) {
			FUNC7(&d->tx_queue, skb);
			break;
		}
		FUNC1(skb);
		d->tx_credits--;
	}

	if (d->cfc && !d->tx_credits) {
		/* We're out of TX credits.
		 * Set TX_THROTTLED flag to avoid unnesary wakeups by dlc_send. */
		FUNC5(RFCOMM_TX_THROTTLED, &d->flags);
	}

	return FUNC8(&d->tx_queue);
}