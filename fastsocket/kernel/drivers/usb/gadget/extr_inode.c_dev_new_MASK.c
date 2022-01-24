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
struct dev_data {int /*<<< orphan*/  wait; int /*<<< orphan*/  epfiles; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATE_DEV_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dev_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dev_data *FUNC5 (void)
{
	struct dev_data		*dev;

	dev = FUNC3(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;
	dev->state = STATE_DEV_DISABLED;
	FUNC1 (&dev->count, 1);
	FUNC4 (&dev->lock);
	FUNC0 (&dev->epfiles);
	FUNC2 (&dev->wait);
	return dev;
}