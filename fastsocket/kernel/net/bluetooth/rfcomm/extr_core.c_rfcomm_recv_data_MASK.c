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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rfcomm_session {int /*<<< orphan*/  state; } ;
struct rfcomm_dlc {scalar_t__ state; int /*<<< orphan*/  (* data_ready ) (struct rfcomm_dlc*,struct sk_buff*) ;int /*<<< orphan*/  rx_credits; int /*<<< orphan*/  flags; scalar_t__ tx_credits; scalar_t__ cfc; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  RFCOMM_TX_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct rfcomm_dlc* FUNC3 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_dlc*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct rfcomm_session *s, u8 dlci, int pf, struct sk_buff *skb)
{
	struct rfcomm_dlc *d;

	FUNC0("session %p state %ld dlci %d pf %d", s, s->state, dlci, pf);

	d = FUNC3(s, dlci);
	if (!d) {
		FUNC6(s, dlci);
		goto drop;
	}

	if (pf && d->cfc) {
		u8 credits = *(u8 *) skb->data; FUNC7(skb, 1);

		d->tx_credits += credits;
		if (d->tx_credits)
			FUNC1(RFCOMM_TX_THROTTLED, &d->flags);
	}

	if (skb->len && d->state == BT_CONNECTED) {
		FUNC4(d);
		d->rx_credits--;
		d->data_ready(d, skb);
		FUNC5(d);
		return 0;
	}

drop:
	FUNC2(skb);
	return 0;
}