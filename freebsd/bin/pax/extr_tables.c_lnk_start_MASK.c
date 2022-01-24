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
typedef  int /*<<< orphan*/  HRDLNK ;

/* Variables and functions */
 int /*<<< orphan*/  L_TAB_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** ltab ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

int
FUNC2(void)
{
	if (ltab != NULL)
		return(0);
 	if ((ltab = (HRDLNK **)FUNC0(L_TAB_SZ, sizeof(HRDLNK *))) == NULL) {
		FUNC1(1, "Cannot allocate memory for hard link table");
		return(-1);
	}
	return(0);
}