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
 int EINVAL ; 
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*,char*,int const) ; 

int FUNC2(char *data, const bool is_delete)
{
	char *cp = FUNC0(data, ' ');

	if (!cp)
		return -EINVAL;
	*cp++ = '\0';
	return FUNC1(data, cp, is_delete);
}