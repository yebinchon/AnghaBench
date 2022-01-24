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
struct rfcomm_session {scalar_t__ state; } ;
struct rfcomm_dlc {scalar_t__ state; } ;

/* Variables and functions */
 void* BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,scalar_t__,scalar_t__) ; 
 int ECONNREFUSED ; 
 int ECONNRESET ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*,int) ; 
 struct rfcomm_dlc* FUNC2 (struct rfcomm_session*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_session*,int) ; 

__attribute__((used)) static int FUNC4(struct rfcomm_session *s, u8 dlci)
{
	int err = 0;

	FUNC0("session %p state %ld dlci %d", s, s->state, dlci);

	if (dlci) {
		/* Data DLC */
		struct rfcomm_dlc *d = FUNC2(s, dlci);
		if (d) {
			if (d->state == BT_CONNECT || d->state == BT_CONFIG)
				err = ECONNREFUSED;
			else
				err = ECONNRESET;

			d->state = BT_CLOSED;
			FUNC1(d, err);
		}
	} else {
		if (s->state == BT_CONNECT)
			err = ECONNREFUSED;
		else
			err = ECONNRESET;

		s->state = BT_CLOSED;
		FUNC3(s, err);
	}
	return 0;
}