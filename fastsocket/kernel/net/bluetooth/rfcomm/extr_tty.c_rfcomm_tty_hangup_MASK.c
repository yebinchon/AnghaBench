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
struct tty_struct {scalar_t__ driver_data; } ;
struct rfcomm_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct tty_struct*,struct rfcomm_dev*) ; 
 int /*<<< orphan*/  RFCOMM_RELEASE_ONHUP ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;

	FUNC0("tty %p dev %p", tty, dev);

	if (!dev)
		return;

	FUNC4(tty);

	if (FUNC5(RFCOMM_RELEASE_ONHUP, &dev->flags)) {
		if (FUNC2(dev->id) == NULL)
			return;
		FUNC1(dev);
		FUNC3(dev);
	}
}