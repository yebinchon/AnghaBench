#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  size_t u16 ;
struct ip_set {int /*<<< orphan*/  lock; struct bitmap_port* data; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct bitmap_port {unsigned long* members; size_t last_port; size_t first_port; TYPE_1__ gc; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int HZ ; 
 unsigned long IPSET_ELEM_UNSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(unsigned long ul_set)
{
	struct ip_set *set = (struct ip_set *) ul_set;
	struct bitmap_port *map = set->data;
	unsigned long *table = map->members;
	u32 id;	/* wraparound */
	u16 last = map->last_port - map->first_port;

	/* We run parallel with other readers (test element)
	 * but adding/deleting new entries is locked out */
	FUNC3(&set->lock);
	for (id = 0; id <= last; id++)
		if (FUNC2(table[id]))
			table[id] = IPSET_ELEM_UNSET;
	FUNC4(&set->lock);

	map->gc.expires = jiffies + FUNC0(map->timeout) * HZ;
	FUNC1(&map->gc);
}