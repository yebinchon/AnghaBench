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
 int /*<<< orphan*/  FUNC0 (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC1 (char*,size_t,char*,char*,int,int,int) ; 
 scalar_t__ FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int
FUNC4(char *buffer, size_t sz)
{
	unsigned int a, b, c, d, lvl;
	int family = -1, model = -1, step = -1;
	int nb;
	char vendor[16];

	FUNC0(0, &lvl, &b, &c, &d);
	FUNC3(&vendor[0], (char *)(&b), 4);
	FUNC3(&vendor[4], (char *)(&d), 4);
	FUNC3(&vendor[8], (char *)(&c), 4);
	vendor[12] = '\0';

	if (lvl >= 1) {
		FUNC0(1, &a, &b, &c, &d);

		family = (a >> 8) & 0xf;  /* bits 11 - 8 */
		model  = (a >> 4) & 0xf;  /* Bits  7 - 4 */
		step   = a & 0xf;

		/* extended family */
		if (family == 0xf)
			family += (a >> 20) & 0xff;

		/* extended model */
		if (family >= 0x6)
			model += ((a >> 16) & 0xf) << 4;
	}
	nb = FUNC1(buffer, sz, "%s,%u,%u,%u$", vendor, family, model, step);

	/* look for end marker to ensure the entire data fit */
	if (FUNC2(buffer, '$')) {
		buffer[nb-1] = '\0';
		return 0;
	}
	return -1;
}