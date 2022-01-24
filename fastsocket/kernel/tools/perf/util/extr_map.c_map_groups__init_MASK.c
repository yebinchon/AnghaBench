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
struct map_groups {int /*<<< orphan*/ * machine; int /*<<< orphan*/ * removed_maps; int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAP__NR_TYPES ; 
 int /*<<< orphan*/  RB_ROOT ; 

void FUNC1(struct map_groups *mg)
{
	int i;
	for (i = 0; i < MAP__NR_TYPES; ++i) {
		mg->maps[i] = RB_ROOT;
		FUNC0(&mg->removed_maps[i]);
	}
	mg->machine = NULL;
}