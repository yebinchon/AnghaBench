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
struct cluster {size_t highest_node; size_t highest_slave; struct cluster* nodes; } ;

/* Variables and functions */
 size_t LOWEST_SLAVE ; 
 int /*<<< orphan*/  FUNC0 (struct cluster*) ; 
 int /*<<< orphan*/  FUNC1 (struct cluster) ; 

void FUNC2(struct cluster *c_ptr)
{
	u32 n_num;

	if (!c_ptr)
		return;
	for (n_num = 1; n_num <= c_ptr->highest_node; n_num++) {
		FUNC1(c_ptr->nodes[n_num]);
	}
	for (n_num = LOWEST_SLAVE; n_num <= c_ptr->highest_slave; n_num++) {
		FUNC1(c_ptr->nodes[n_num]);
	}
	FUNC0(c_ptr->nodes);
	FUNC0(c_ptr);
}