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
struct nfnetlink_subsystem {size_t subsys_id; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct nfnetlink_subsystem const** subsys_table ; 

int FUNC2(const struct nfnetlink_subsystem *n)
{
	FUNC0();
	if (subsys_table[n->subsys_id]) {
		FUNC1();
		return -EBUSY;
	}
	subsys_table[n->subsys_id] = n;
	FUNC1();

	return 0;
}