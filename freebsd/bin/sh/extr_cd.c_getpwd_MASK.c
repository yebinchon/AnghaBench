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
 char* curdir ; 
 char* FUNC0 () ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(void)
{
	char *p;

	if (curdir)
		return curdir;

	p = FUNC0();
	if (p != NULL)
		curdir = FUNC1(p);

	return curdir;
}