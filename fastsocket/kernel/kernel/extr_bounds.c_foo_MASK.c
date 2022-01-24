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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_NR_ZONES ; 
 int /*<<< orphan*/  NR_PAGEFLAGS ; 
 int /*<<< orphan*/  NR_PCG_FLAGS ; 
 int /*<<< orphan*/  __MAX_NR_ZONES ; 
 int /*<<< orphan*/  __NR_PAGEFLAGS ; 
 int /*<<< orphan*/  __NR_PCG_FLAGS ; 

void FUNC1(void)
{
	/* The enum constants to put into include/linux/bounds.h */
	FUNC0(NR_PAGEFLAGS, __NR_PAGEFLAGS);
	FUNC0(MAX_NR_ZONES, __MAX_NR_ZONES);
	FUNC0(NR_PCG_FLAGS, __NR_PCG_FLAGS);
	/* End of constants */
}