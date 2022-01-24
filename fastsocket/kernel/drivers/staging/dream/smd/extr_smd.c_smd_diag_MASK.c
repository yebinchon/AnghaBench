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
 int /*<<< orphan*/  ID_DIAG_ERR_MSG ; 
 int SZ_DIAG_ERR_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	char *x;

	x = FUNC1(ID_DIAG_ERR_MSG, SZ_DIAG_ERR_MSG);
	if (x != 0) {
		x[SZ_DIAG_ERR_MSG - 1] = 0;
		FUNC0("smem: DIAG '%s'\n", x);
	}
}