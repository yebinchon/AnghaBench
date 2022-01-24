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
struct perf_script_browser {int /*<<< orphan*/  b; int /*<<< orphan*/  script_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct perf_script_browser *self)
{
	int key;

	if (FUNC2(&self->b, self->script_name,
			     "Press <- or ESC to exit") < 0)
		return -1;

	while (1) {
		key = FUNC1(&self->b, 0);

		/* We can add some special key handling here if needed */
		break;
	}

	FUNC0(&self->b);
	return key;
}