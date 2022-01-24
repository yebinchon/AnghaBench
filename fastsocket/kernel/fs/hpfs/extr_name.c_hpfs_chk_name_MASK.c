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
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

int FUNC2(unsigned char *name, unsigned *len)
{
	int i;
	if (*len > 254) return -ENAMETOOLONG;
	FUNC0(name, len);
	if (!*len) return -EINVAL;
	for (i = 0; i < *len; i++) if (FUNC1(name[i])) return -EINVAL;
	if (*len == 1) if (name[0] == '.') return -EINVAL;
	if (*len == 2) if (name[0] == '.' && name[1] == '.') return -EINVAL;
	return 0;
}