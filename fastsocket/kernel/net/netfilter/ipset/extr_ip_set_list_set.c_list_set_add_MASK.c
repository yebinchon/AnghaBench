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
struct set_elem {scalar_t__ id; } ;
struct list_set {int size; int /*<<< orphan*/  timeout; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct list_set*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct list_set*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct set_elem* FUNC4 (struct list_set*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct list_set *map, u32 i, ip_set_id_t id,
	     unsigned long timeout)
{
	const struct set_elem *e = FUNC4(map, i);

	if (i == map->size - 1 && e->id != IPSET_INVALID_ID)
		/* Last element replaced: e.g. add new,before,last */
		FUNC0(e->id);
	if (FUNC5(map->timeout))
		FUNC3(map, i, id, FUNC1(timeout));
	else
		FUNC2(map, i, id);

	return 0;
}