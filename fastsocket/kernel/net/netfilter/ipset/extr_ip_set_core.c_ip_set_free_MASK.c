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
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void
FUNC4(void *members)
{
	FUNC2("%p: free with %s\n", members,
		 FUNC0(members) ? "vfree" : "kfree");
	if (FUNC0(members))
		FUNC3(members);
	else
		FUNC1(members);
}