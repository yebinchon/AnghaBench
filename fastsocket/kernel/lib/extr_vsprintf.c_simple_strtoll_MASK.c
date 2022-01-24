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
 long long FUNC0 (char const*,char**,unsigned int) ; 

long long FUNC1(const char *cp, char **endp, unsigned int base)
{
	if(*cp=='-')
		return -FUNC0(cp + 1, endp, base);
	return FUNC0(cp, endp, base);
}