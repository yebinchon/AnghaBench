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

int FUNC1(unsigned char *name, unsigned len)
{
	int i,j;
	for (i = 0; i < len && name[i] != '.'; i++)
		if (FUNC0(name[i])) return 1;
	if (!i || i > 8) return 1;
	if (i == len) return 0;
	for (j = i + 1; j < len; j++)
		if (name[j] == '.' || FUNC0(name[i])) return 1;
	return j - i > 4;
}