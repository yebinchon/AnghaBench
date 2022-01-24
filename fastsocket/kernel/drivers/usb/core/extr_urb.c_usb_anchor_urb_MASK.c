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
struct usb_anchor {int /*<<< orphan*/  lock; int /*<<< orphan*/  poisoned; int /*<<< orphan*/  urb_list; } ;
struct urb {int /*<<< orphan*/  reject; struct usb_anchor* anchor; int /*<<< orphan*/  anchor_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

void FUNC6(struct urb *urb, struct usb_anchor *anchor)
{
	unsigned long flags;

	FUNC2(&anchor->lock, flags);
	FUNC5(urb);
	FUNC1(&urb->anchor_list, &anchor->urb_list);
	urb->anchor = anchor;

	if (FUNC4(anchor->poisoned)) {
		FUNC0(&urb->reject);
	}

	FUNC3(&anchor->lock, flags);
}