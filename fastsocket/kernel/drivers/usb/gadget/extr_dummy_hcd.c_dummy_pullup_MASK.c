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
struct usb_gadget {int dummy; } ;
struct dummy {int pullup; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dummy*) ; 
 struct dummy* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (struct usb_gadget *_gadget, int value)
{
	struct dummy	*dum;
	unsigned long	flags;

	dum = FUNC1 (_gadget);
	FUNC3 (&dum->lock, flags);
	dum->pullup = (value != 0);
	FUNC2 (dum);
	FUNC4 (&dum->lock, flags);

	FUNC5 (FUNC0 (dum));
	return 0;
}