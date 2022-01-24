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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  REG_OP_ALLOC ; 
 int /*<<< orphan*/  REG_OP_ISFREE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int,int,int /*<<< orphan*/ ) ; 

int FUNC1(unsigned long *bitmap, int pos, int order)
{
	if (!FUNC0(bitmap, pos, order, REG_OP_ISFREE))
		return -EBUSY;
	FUNC0(bitmap, pos, order, REG_OP_ALLOC);
	return 0;
}