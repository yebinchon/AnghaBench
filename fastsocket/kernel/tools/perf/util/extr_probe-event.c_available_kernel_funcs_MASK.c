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
struct map {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct map*) ; 
 int FUNC1 () ; 
 struct map* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *module)
{
	struct map *map;
	int ret;

	ret = FUNC1();
	if (ret < 0)
		return ret;

	map = FUNC2(module);
	if (!map) {
		FUNC3("Failed to find %s map.\n", (module) ? : "kernel");
		return -EINVAL;
	}
	return FUNC0(map);
}