#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uwb_rceb {scalar_t__ bEventContext; int /*<<< orphan*/  wEvent; int /*<<< orphan*/  bEventType; } ;
struct uwb_rc_neh {int /*<<< orphan*/  timer; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 struct uwb_rceb* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rceb*,struct uwb_rceb*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc_neh*,struct uwb_rceb*,size_t) ; 
 struct uwb_rc_neh* FUNC7 (struct uwb_rc*,struct uwb_rceb*) ; 
 int /*<<< orphan*/  FUNC8 (struct uwb_rc*,struct uwb_rceb*,size_t) ; 

__attribute__((used)) static void FUNC9(struct uwb_rc *rc, struct uwb_rceb *rceb, size_t size)
{
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rc_neh *neh;
	struct uwb_rceb *notif;

	if (rceb->bEventContext == 0) {
		notif = FUNC3(size, GFP_ATOMIC);
		if (notif) {
			FUNC5(notif, rceb, size);
			FUNC8(rc, notif, size);
		} else
			FUNC1(dev, "event 0x%02x/%04x/%02x (%zu bytes): no memory\n",
				rceb->bEventType, FUNC4(rceb->wEvent),
				rceb->bEventContext, size);
	} else {
		neh = FUNC7(rc, rceb);
		if (neh) {
			FUNC0(&neh->timer);
			FUNC6(neh, rceb, size);
		} else
			FUNC2(dev, "event 0x%02x/%04x/%02x (%zu bytes): nobody cared\n",
				 rceb->bEventType, FUNC4(rceb->wEvent),
				 rceb->bEventContext, size);
	}
}