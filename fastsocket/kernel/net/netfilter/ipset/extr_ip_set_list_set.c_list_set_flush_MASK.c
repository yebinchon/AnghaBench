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
struct ip_set {struct list_set* data; } ;

/* Variables and functions */
 scalar_t__ IPSET_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct set_elem* FUNC1 (struct list_set*,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct ip_set *set)
{
	struct list_set *map = set->data;
	struct set_elem *elem;
	u32 i;

	for (i = 0; i < map->size; i++) {
		elem = FUNC1(map, i);
		if (elem->id != IPSET_INVALID_ID) {
			FUNC0(elem->id);
			elem->id = IPSET_INVALID_ID;
		}
	}
}