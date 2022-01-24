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
struct sk_buff {scalar_t__ data; } ;
struct rfcomm_session {int /*<<< orphan*/  initiator; int /*<<< orphan*/  state; } ;
struct rfcomm_pn {scalar_t__ dlci; } ;
struct rfcomm_dlc {int state; int /*<<< orphan*/  addr; scalar_t__ dlci; } ;

/* Variables and functions */
#define  BT_CONFIG 128 
 int BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ,scalar_t__) ; 
 int BT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*,int,struct rfcomm_pn*) ; 
 scalar_t__ FUNC4 (struct rfcomm_session*,scalar_t__,struct rfcomm_dlc**) ; 
 struct rfcomm_dlc* FUNC5 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_session*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,int /*<<< orphan*/ ,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct rfcomm_session *s, int cr, struct sk_buff *skb)
{
	struct rfcomm_pn *pn = (void *) skb->data;
	struct rfcomm_dlc *d;
	u8 dlci = pn->dlci;

	FUNC0("session %p state %ld dlci %d", s, s->state, dlci);

	if (!dlci)
		return 0;

	d = FUNC5(s, dlci);
	if (d) {
		if (cr) {
			/* PN request */
			FUNC3(d, cr, pn);
			FUNC8(s, 0, d);
		} else {
			/* PN response */
			switch (d->state) {
			case BT_CONFIG:
				FUNC3(d, cr, pn);

				d->state = BT_CONNECT;
				FUNC9(s, d->dlci);
				break;
			}
		}
	} else {
		u8 channel = FUNC2(dlci);

		if (!cr)
			return 0;

		/* PN request for non existing DLC.
		 * Assume incoming connection. */
		if (FUNC4(s, channel, &d)) {
			d->dlci = dlci;
			d->addr = FUNC1(s->initiator, dlci);
			FUNC6(s, d);

			FUNC3(d, cr, pn);

			d->state = BT_OPEN;
			FUNC8(s, 0, d);
		} else {
			FUNC7(s, dlci);
		}
	}
	return 0;
}