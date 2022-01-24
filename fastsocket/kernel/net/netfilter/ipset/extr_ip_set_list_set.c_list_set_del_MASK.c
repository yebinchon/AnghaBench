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
typedef  int u32 ;
struct set_telem {int /*<<< orphan*/  timeout; } ;
struct set_elem {scalar_t__ id; } ;
struct list_set {int size; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct set_elem* FUNC1 (struct list_set*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct list_set *map, u32 i)
{
	struct set_elem *a = FUNC1(map, i), *b;

	FUNC0(a->id);

	for (; i < map->size - 1; i++) {
		b = FUNC1(map, i + 1);
		a->id = b->id;
		if (FUNC2(map->timeout))
			((struct set_telem *)a)->timeout =
				((struct set_telem *)b)->timeout;
		a = b;
		if (a->id == IPSET_INVALID_ID)
			break;
	}
	/* Last element */
	a->id = IPSET_INVALID_ID;
	return 0;
}