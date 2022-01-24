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
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int state; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  (* state_change ) (struct rfcomm_dlc*,int) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  dlci; struct rfcomm_session* session; } ;

/* Variables and functions */
 int BT_CLOSED ; 
#define  BT_CONFIG 132 
#define  BT_CONNECT 131 
#define  BT_CONNECT2 130 
#define  BT_CONNECTED 129 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int,int /*<<< orphan*/ ,int,struct rfcomm_session*) ; 
 int BT_DISCONN ; 
#define  BT_OPEN 128 
 int /*<<< orphan*/  RFCOMM_AUTH_REJECT ; 
 int /*<<< orphan*/  RFCOMM_DEFER_SETUP ; 
 int RFCOMM_DISC_TIMEOUT ; 
 int /*<<< orphan*/  RFCOMM_SCHED_AUTH ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rfcomm_dlc*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct rfcomm_dlc *d, int err)
{
	struct rfcomm_session *s = d->session;
	if (!s)
		return 0;

	FUNC0("dlc %p state %ld dlci %d err %d session %p",
			d, d->state, d->dlci, err, s);

	switch (d->state) {
	case BT_CONNECT:
	case BT_CONFIG:
		if (FUNC13(RFCOMM_DEFER_SETUP, &d->flags)) {
			FUNC9(RFCOMM_AUTH_REJECT, &d->flags);
			FUNC7(RFCOMM_SCHED_AUTH);
			break;
		}
		/* Fall through */

	case BT_CONNECTED:
		d->state = BT_DISCONN;
		if (FUNC10(&d->tx_queue)) {
			FUNC8(s, d->dlci);
			FUNC3(d, RFCOMM_DISC_TIMEOUT);
		} else {
			FUNC6(d);
			FUNC3(d, RFCOMM_DISC_TIMEOUT * 2);
		}
		break;

	case BT_OPEN:
	case BT_CONNECT2:
		if (FUNC13(RFCOMM_DEFER_SETUP, &d->flags)) {
			FUNC9(RFCOMM_AUTH_REJECT, &d->flags);
			FUNC7(RFCOMM_SCHED_AUTH);
			break;
		}
		/* Fall through */

	default:
		FUNC1(d);

		FUNC2(d);
		d->state = BT_CLOSED;
		d->state_change(d, err);
		FUNC5(d);

		FUNC11(&d->tx_queue);
		FUNC4(d);
	}

	return 0;
}