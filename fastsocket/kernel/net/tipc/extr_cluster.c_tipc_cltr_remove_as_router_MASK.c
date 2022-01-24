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
typedef  size_t u32 ;
struct cluster {size_t highest_slave; size_t highest_node; scalar_t__* nodes; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t LOWEST_SLAVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 

void FUNC3(struct cluster *c_ptr, u32 router)
{
	u32 start_entry;
	u32 tstop;
	u32 n_num;

	if (FUNC1(router))
		return;	/* Slave nodes can not be routers */

	if (FUNC0(c_ptr->addr)) {
		start_entry = LOWEST_SLAVE;
		tstop = c_ptr->highest_slave;
	} else {
		start_entry = 1;
		tstop = c_ptr->highest_node;
	}

	for (n_num = start_entry; n_num <= tstop; n_num++) {
		if (c_ptr->nodes[n_num]) {
			FUNC2(c_ptr->nodes[n_num], router);
		}
	}
}