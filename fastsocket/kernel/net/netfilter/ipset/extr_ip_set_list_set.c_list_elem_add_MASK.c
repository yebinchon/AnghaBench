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
typedef  scalar_t__ u32 ;
struct set_elem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 scalar_t__ IPSET_INVALID_ID ; 
 struct set_elem* FUNC0 (struct list_set*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct list_set *map, u32 i, ip_set_id_t id)
{
	struct set_elem *e;

	for (; i < map->size; i++) {
		e = FUNC0(map, i);
		FUNC1(e->id, id);
		if (e->id == IPSET_INVALID_ID)
			break;
	}
}