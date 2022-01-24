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
struct platform_device {int dummy; } ;
struct dsa_switch_tree {struct dsa_switch** ds; TYPE_1__* pd; int /*<<< orphan*/  link_poll_timer; scalar_t__ link_poll_needed; } ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int nr_chips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct dsa_switch_tree* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct dsa_switch_tree *dst = FUNC3(pdev);
	int i;

	if (dst->link_poll_needed)
		FUNC0(&dst->link_poll_timer);

	FUNC2();

	for (i = 0; i < dst->pd->nr_chips; i++) {
		struct dsa_switch *ds = dst->ds[i];

		if (ds != NULL)
			FUNC1(ds);
	}

	return 0;
}