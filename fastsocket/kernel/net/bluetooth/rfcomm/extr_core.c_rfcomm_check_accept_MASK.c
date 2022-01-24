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
struct rfcomm_dlc {int /*<<< orphan*/  flags; int /*<<< orphan*/  (* state_change ) (struct rfcomm_dlc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; scalar_t__ defer_setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CONNECT2 ; 
 int /*<<< orphan*/  RFCOMM_AUTH_PENDING ; 
 int /*<<< orphan*/  RFCOMM_AUTH_TIMEOUT ; 
 int /*<<< orphan*/  RFCOMM_DEFER_SETUP ; 
 scalar_t__ FUNC0 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rfcomm_dlc *d)
{
	if (FUNC0(d)) {
		if (d->defer_setup) {
			FUNC5(RFCOMM_DEFER_SETUP, &d->flags);
			FUNC3(d, RFCOMM_AUTH_TIMEOUT);

			FUNC2(d);
			d->state = BT_CONNECT2;
			d->state_change(d, 0);
			FUNC4(d);
		} else
			FUNC1(d);
	} else {
		FUNC5(RFCOMM_AUTH_PENDING, &d->flags);
		FUNC3(d, RFCOMM_AUTH_TIMEOUT);
	}
}