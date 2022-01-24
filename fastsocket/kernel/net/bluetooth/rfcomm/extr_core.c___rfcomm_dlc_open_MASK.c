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
typedef  int u8 ;
struct rfcomm_session {scalar_t__ cfc; scalar_t__ state; int /*<<< orphan*/  mtu; int /*<<< orphan*/  initiator; } ;
struct rfcomm_dlc {scalar_t__ state; int dlci; int priority; int out; scalar_t__ cfc; int /*<<< orphan*/  flags; int /*<<< orphan*/  mtu; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ BT_OPEN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RFCOMM_AUTH_PENDING ; 
 scalar_t__ RFCOMM_CFC_UNKNOWN ; 
 int /*<<< orphan*/  RFCOMM_CONN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 scalar_t__ FUNC6 (struct rfcomm_session*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,int,struct rfcomm_dlc*) ; 
 struct rfcomm_session* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 struct rfcomm_session* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct rfcomm_dlc *d, bdaddr_t *src, bdaddr_t *dst, u8 channel)
{
	struct rfcomm_session *s;
	int err = 0;
	u8 dlci;

	FUNC0("dlc %p state %ld %s %s channel %d",
			d, d->state, FUNC3(src), FUNC3(dst), channel);

	if (channel < 1 || channel > 30)
		return -EINVAL;

	if (d->state != BT_OPEN && d->state != BT_CLOSED)
		return 0;

	s = FUNC11(src, dst);
	if (!s) {
		s = FUNC10(src, dst, &err);
		if (!s)
			return err;
	}

	dlci = FUNC2(!s->initiator, channel);

	/* Check if DLCI already exists */
	if (FUNC6(s, dlci))
		return -EBUSY;

	FUNC5(d);

	d->dlci     = dlci;
	d->addr     = FUNC1(s->initiator, dlci);
	d->priority = 7;

	d->state = BT_CONFIG;
	FUNC7(s, d);

	d->out = 1;

	d->mtu = s->mtu;
	d->cfc = (s->cfc == RFCOMM_CFC_UNKNOWN) ? 0 : s->cfc;

	if (s->state == BT_CONNECTED) {
		if (FUNC4(d))
			FUNC9(s, 1, d);
		else
			FUNC12(RFCOMM_AUTH_PENDING, &d->flags);
	}

	FUNC8(d, RFCOMM_CONN_TIMEOUT);

	return 0;
}