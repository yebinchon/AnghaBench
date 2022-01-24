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
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,unsigned int) ; 
 unsigned char FUNC1 (unsigned char const) ; 

int
FUNC2(unsigned char *vname, unsigned int *vlen,
		const unsigned char *iname, unsigned int ilen, int cc)
{
	int i;

	if (*vlen <= ilen)
		return -ENAMETOOLONG;

	if (cc)
		for (i = 0; i < ilen; i++) {
			*vname = FUNC1(*iname);
			vname++;
			iname++;
		}
	else {
		FUNC0(vname, iname, ilen);
		vname += ilen;
	}

	*vlen = ilen;
	*vname = 0;
	return 0;
}