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
 int FUNC0 (unsigned char*,unsigned char*) ; 
 int FUNC1 (unsigned char*,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char,int) ; 

int
FUNC4(unsigned char *passwd, const unsigned char *c8, unsigned char *p24)
{
	int rc;
	unsigned char p14[14], p16[16], p21[21];

	FUNC3(p14, '\0', 14);
	FUNC3(p16, '\0', 16);
	FUNC3(p21, '\0', 21);

	FUNC2(p14, passwd, 14);
	rc = FUNC0(p14, p16);
	if (rc)
		return rc;

	FUNC2(p21, p16, 16);
	rc = FUNC1(p21, c8, p24);

	return rc;
}