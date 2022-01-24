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
typedef  char* pointer ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  stacknleft ; 
 char* stacknxt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC2(pointer p)
{
	if (p == NULL) {		/*DEBUG */
		FUNC1(STDERR_FILENO, "stunalloc\n", 10);
		FUNC0();
	}
	stacknleft += stacknxt - (char *)p;
	stacknxt = p;
}