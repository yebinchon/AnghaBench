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
struct cpu_map {int nr; int /*<<< orphan*/ * map; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

size_t FUNC1(struct cpu_map *map, FILE *fp)
{
	int i;
	size_t printed = FUNC0(fp, "%d cpu%s: ",
				 map->nr, map->nr > 1 ? "s" : "");
	for (i = 0; i < map->nr; ++i)
		printed += FUNC0(fp, "%s%d", i ? ", " : "", map->map[i]);

	return printed + FUNC0(fp, "\n");
}