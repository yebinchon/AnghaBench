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
struct rfcomm_dev {int /*<<< orphan*/  list; int /*<<< orphan*/  opened; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_TTY_RELEASED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfcomm_dev_lock ; 
 int /*<<< orphan*/  FUNC4 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rfcomm_dev *dev)
{
	FUNC0("dev %p", dev);

	FUNC1(FUNC5(RFCOMM_TTY_RELEASED, &dev->flags));

	if (FUNC2(&dev->opened) > 0)
		return;

	FUNC6(&rfcomm_dev_lock);
	FUNC3(&dev->list);
	FUNC7(&rfcomm_dev_lock);

	FUNC4(dev);
}