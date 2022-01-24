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
struct dev_addr_list {int /*<<< orphan*/  da_addrlen; int /*<<< orphan*/  da_addr; scalar_t__ da_synced; struct dev_addr_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dev_addr_list**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct dev_addr_list **to, int *to_count,
		       struct dev_addr_list **from, int *from_count)
{
	struct dev_addr_list *da, *next;

	da = *from;
	while (da != NULL) {
		next = da->next;
		if (da->da_synced) {
			FUNC0(to, to_count,
					  da->da_addr, da->da_addrlen, 0);
			da->da_synced = 0;
			FUNC0(from, from_count,
					  da->da_addr, da->da_addrlen, 0);
		}
		da = next;
	}
}