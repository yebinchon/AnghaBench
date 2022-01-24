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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ZPROP_CONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(int prop, void *cb)
{
	FILE *fp = cb;

	(void) FUNC0(fp, "\t%-15s  ", FUNC2(prop));

	if (FUNC1(prop))
		(void) FUNC0(fp, "  NO   ");
	else
		(void) FUNC0(fp, " YES   ");

	if (FUNC3(prop) == NULL)
		(void) FUNC0(fp, "-\n");
	else
		(void) FUNC0(fp, "%s\n", FUNC3(prop));

	return (ZPROP_CONT);
}