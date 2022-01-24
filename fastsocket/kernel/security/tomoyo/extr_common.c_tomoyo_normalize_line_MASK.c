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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static void FUNC2(unsigned char *buffer)
{
	unsigned char *sp = buffer;
	unsigned char *dp = buffer;
	bool first = true;

	while (FUNC0(*sp))
		sp++;
	while (*sp) {
		if (!first)
			*dp++ = ' ';
		first = false;
		while (FUNC1(*sp))
			*dp++ = *sp++;
		while (FUNC0(*sp))
			sp++;
	}
	*dp = '\0';
}