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
 int /*<<< orphan*/  REG_OP_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int,int,int /*<<< orphan*/ ) ; 

void FUNC1(unsigned long *bitmap, int pos, int order)
{
	FUNC0(bitmap, pos, order, REG_OP_RELEASE);
}