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
struct usb_device {int dummy; } ;
struct dev_state {int /*<<< orphan*/  wait; struct usb_device* dev; } ;
struct async {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct async* FUNC3 (struct dev_state*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct async *FUNC10(struct dev_state *ps)
{
	FUNC0(wait, current);
	struct async *as = NULL;
	struct usb_device *dev = ps->dev;

	FUNC2(&ps->wait, &wait);
	for (;;) {
		FUNC1(TASK_INTERRUPTIBLE);
		as = FUNC3(ps);
		if (as)
			break;
		if (FUNC7(current))
			break;
		FUNC9(dev);
		FUNC5();
		FUNC8(dev);
	}
	FUNC4(&ps->wait, &wait);
	FUNC6(TASK_RUNNING);
	return as;
}