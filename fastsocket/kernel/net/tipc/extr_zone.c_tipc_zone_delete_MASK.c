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
struct _zone {int /*<<< orphan*/ * clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t tipc_max_clusters ; 

void FUNC2(struct _zone *z_ptr)
{
	u32 c_num;

	if (!z_ptr)
		return;
	for (c_num = 1; c_num <= tipc_max_clusters; c_num++) {
		FUNC1(z_ptr->clusters[c_num]);
	}
	FUNC0(z_ptr);
}