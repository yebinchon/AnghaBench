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
struct map {int /*<<< orphan*/  type; int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_available_functions ; 
 scalar_t__ FUNC3 (struct map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC5(struct map *map)
{
	if (FUNC3(map, filter_available_functions)) {
		FUNC4("Failed to load map.\n");
		return -EINVAL;
	}
	if (!FUNC2(map->dso, map->type))
		FUNC1(map->dso, map->type);

	FUNC0(map->dso, map->type, stdout);
	return 0;
}