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
struct rfcomm_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFCOMM_TTY_RELEASED ; 
 struct rfcomm_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dev*) ; 
 int /*<<< orphan*/  rfcomm_dev_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct rfcomm_dev *FUNC5(int id)
{
	struct rfcomm_dev *dev;

	FUNC1(&rfcomm_dev_lock);

	dev = FUNC0(id);

	if (dev) {
		if (FUNC4(RFCOMM_TTY_RELEASED, &dev->flags))
			dev = NULL;
		else
			FUNC3(dev);
	}

	FUNC2(&rfcomm_dev_lock);

	return dev;
}