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
struct prop_descriptor {TYPE_1__* pg; int /*<<< orphan*/  mutex; scalar_t__ index; } ;
struct TYPE_2__ {int shift; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int PROP_MAX_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct prop_descriptor *pd, int shift)
{
	int err;

	if (shift > PROP_MAX_SHIFT)
		shift = PROP_MAX_SHIFT;

	pd->index = 0;
	pd->pg[0].shift = shift;
	FUNC0(&pd->mutex);
	err = FUNC2(&pd->pg[0].events, 0);
	if (err)
		goto out;

	err = FUNC2(&pd->pg[1].events, 0);
	if (err)
		FUNC1(&pd->pg[0].events);

out:
	return err;
}