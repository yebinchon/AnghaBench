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
typedef  int /*<<< orphan*/  ATDIR ;

/* Variables and functions */
 int /*<<< orphan*/  A_TAB_SZ ; 
 int /*<<< orphan*/ ** atab ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

int
FUNC2(void)
{
	if (atab != NULL)
		return(0);
 	if ((atab = (ATDIR **)FUNC0(A_TAB_SZ, sizeof(ATDIR *))) == NULL) {
		FUNC1(1,"Cannot allocate space for directory access time table");
		return(-1);
	}
	return(0);
}