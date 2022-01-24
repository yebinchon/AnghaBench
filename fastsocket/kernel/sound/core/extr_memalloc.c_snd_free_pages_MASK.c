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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int FUNC2 (size_t) ; 

void FUNC3(void *ptr, size_t size)
{
	int pg;

	if (ptr == NULL)
		return;
	pg = FUNC2(size);
	FUNC0(pg);
	FUNC1((unsigned long) ptr, pg);
}