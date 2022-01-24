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
 struct map* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct map*,struct map*,int) ; 

struct map *FUNC2(struct map *self)
{
	struct map *map = FUNC0(sizeof(*self));

	if (!map)
		return NULL;

	FUNC1(map, self, sizeof(*self));

	return map;
}