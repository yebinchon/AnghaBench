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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (size_t) ; 
 void* FUNC2 (unsigned long,unsigned int,size_t) ; 

void *FUNC3(size_t size, gfp_t gfp_mask)
{
	unsigned int order = FUNC1(size);
	unsigned long addr;

	addr = FUNC0(gfp_mask, order);
	return FUNC2(addr, order, size);
}