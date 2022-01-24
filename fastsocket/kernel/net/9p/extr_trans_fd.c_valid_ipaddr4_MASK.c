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
 int FUNC0 (char const*,char*,int*,int*,int*,int*) ; 

__attribute__((used)) static inline int FUNC1(const char *buf)
{
	int rc, count, in[4];

	rc = FUNC0(buf, "%d.%d.%d.%d", &in[0], &in[1], &in[2], &in[3]);
	if (rc != 4)
		return -EINVAL;
	for (count = 0; count < 4; count++) {
		if (in[count] > 255)
			return -EINVAL;
	}
	return 0;
}