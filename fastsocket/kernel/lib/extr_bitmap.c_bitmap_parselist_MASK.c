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
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,unsigned long*,int) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const char *bp, unsigned long *maskp, int nmaskbits)
{
	char *nl  = FUNC1(bp, '\n');
	int len;

	if (nl)
		len = nl - bp;
	else
		len = FUNC2(bp);

	return FUNC0(bp, len, 0, maskp, nmaskbits);
}