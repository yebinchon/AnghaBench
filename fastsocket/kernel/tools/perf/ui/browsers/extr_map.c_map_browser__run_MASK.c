#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct map_browser {int /*<<< orphan*/  b; TYPE_2__* map; } ;
struct TYPE_4__ {TYPE_1__* dso; } ;
struct TYPE_3__ {int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct map_browser*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC4(struct map_browser *self)
{
	int key;

	if (FUNC3(&self->b, self->map->dso->long_name,
			     "Press <- or ESC to exit, %s / to search",
			     verbose ? "" : "restart with -v to use") < 0)
		return -1;

	while (1) {
		key = FUNC2(&self->b, 0);

		if (verbose && key == '/')
			FUNC0(self);
		else
			break;
	}

	FUNC1(&self->b);
	return key;
}