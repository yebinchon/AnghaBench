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
struct map {int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 int FUNC0 (struct map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct map* FUNC2 (char const*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct map*) ; 

__attribute__((used)) static int FUNC5(const char *target)
{
	struct map *map;
	int ret;

	ret = FUNC3();
	if (ret < 0)
		return ret;

	map = FUNC2(target);
	ret = FUNC0(map);
	FUNC1(map->dso);
	FUNC4(map);
	return ret;
}