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
struct rfcomm_session {scalar_t__ state; int /*<<< orphan*/  initiator; } ;
struct rfcomm_dlc {scalar_t__ state; int /*<<< orphan*/  addr; scalar_t__ dlci; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,scalar_t__,scalar_t__) ; 
 scalar_t__ BT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*) ; 
 scalar_t__ FUNC4 (struct rfcomm_session*,scalar_t__,struct rfcomm_dlc**) ; 
 struct rfcomm_dlc* FUNC5 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_session*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct rfcomm_session *s, u8 dlci)
{
	struct rfcomm_dlc *d;
	u8 channel;

	FUNC0("session %p state %ld dlci %d", s, s->state, dlci);

	if (!dlci) {
		FUNC9(s, 0);

		if (s->state == BT_OPEN) {
			s->state = BT_CONNECTED;
			FUNC7(s);
		}
		return 0;
	}

	/* Check if DLC exists */
	d = FUNC5(s, dlci);
	if (d) {
		if (d->state == BT_OPEN) {
			/* DLC was previously opened by PN request */
			FUNC3(d);
		}
		return 0;
	}

	/* Notify socket layer about incoming connection */
	channel = FUNC2(dlci);
	if (FUNC4(s, channel, &d)) {
		d->dlci = dlci;
		d->addr = FUNC1(s->initiator, dlci);
		FUNC6(s, d);

		FUNC3(d);
	} else {
		FUNC8(s, dlci);
	}

	return 0;
}