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
 int FUNC1 (char*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC2(char *symbol, unsigned long *offset)
{
	char *tmp;
	int ret;

	if (!offset)
		return -EINVAL;

	tmp = FUNC0(symbol, '+');
	if (tmp) {
		/* skip sign because strict_strtol doesn't accept '+' */
		ret = FUNC1(tmp + 1, 0, offset);
		if (ret)
			return ret;
		*tmp = '\0';
	} else
		*offset = 0;
	return 0;
}