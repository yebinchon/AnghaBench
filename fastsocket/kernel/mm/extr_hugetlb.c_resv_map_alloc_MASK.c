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
struct resv_map {int /*<<< orphan*/  regions; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct resv_map* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct resv_map *FUNC3(void)
{
	struct resv_map *resv_map = FUNC1(sizeof(*resv_map), GFP_KERNEL);
	if (!resv_map)
		return NULL;

	FUNC2(&resv_map->refs);
	FUNC0(&resv_map->regions);

	return resv_map;
}