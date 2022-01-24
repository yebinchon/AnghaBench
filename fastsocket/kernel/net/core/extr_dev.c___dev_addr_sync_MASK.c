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
struct dev_addr_list {int da_synced; int da_users; int /*<<< orphan*/  da_addrlen; int /*<<< orphan*/  da_addr; struct dev_addr_list* next; } ;

/* Variables and functions */
 int FUNC0 (struct dev_addr_list**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_addr_list**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct dev_addr_list **to, int *to_count,
		    struct dev_addr_list **from, int *from_count)
{
	struct dev_addr_list *da, *next;
	int err = 0;

	da = *from;
	while (da != NULL) {
		next = da->next;
		if (!da->da_synced) {
			err = FUNC0(to, to_count,
					     da->da_addr, da->da_addrlen, 0);
			if (err < 0)
				break;
			da->da_synced = 1;
			da->da_users++;
		} else if (da->da_users == 1) {
			FUNC1(to, to_count,
					  da->da_addr, da->da_addrlen, 0);
			FUNC1(from, from_count,
					  da->da_addr, da->da_addrlen, 0);
		}
		da = next;
	}
	return err;
}