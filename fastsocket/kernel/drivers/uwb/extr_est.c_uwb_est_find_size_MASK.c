#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct uwb_rceb {int bEventType; scalar_t__ bEventContext; int /*<<< orphan*/  wEvent; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {int type_event_high; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_2__* uwb_est ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*,TYPE_2__*,int,struct uwb_rceb const*,size_t) ; 
 int /*<<< orphan*/  uwb_est_lock ; 
 unsigned int uwb_est_used ; 

ssize_t FUNC5(struct uwb_rc *rc, const struct uwb_rceb *rceb,
			  size_t rceb_size)
{
	/* FIXME: add vendor/product data */
	ssize_t size;
	struct device *dev = &rc->uwb_dev.dev;
	unsigned long flags;
	unsigned itr;
	u16 type_event_high, event;
	u8 *ptr = (u8 *) rceb;

	FUNC2(&uwb_est_lock, flags);
	size = -ENOSPC;
	if (rceb_size < sizeof(*rceb))
		goto out;
	event = FUNC1(rceb->wEvent);
	type_event_high = rceb->bEventType << 8 | (event & 0xff00) >> 8;
	for (itr = 0; itr < uwb_est_used; itr++) {
		if (uwb_est[itr].type_event_high != type_event_high)
			continue;
		size = FUNC4(rc, &uwb_est[itr],
					event & 0x00ff, rceb, rceb_size);
		/* try more tables that might handle the same type */
		if (size != -ENOENT)
			goto out;
	}
	FUNC0(dev, "event 0x%02x/%04x/%02x: no handlers available; "
		"RCEB %02x %02x %02x %02x\n",
		(unsigned) rceb->bEventType,
		(unsigned) FUNC1(rceb->wEvent),
		(unsigned) rceb->bEventContext,
		ptr[0], ptr[1], ptr[2], ptr[3]);
	size = -ENOENT;
out:
	FUNC3(&uwb_est_lock, flags);
	return size;
}