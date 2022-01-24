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
union cmdret {unsigned short* retwords; } ;
struct cmdif {int dummy; } ;

/* Variables and functions */
 union cmdret CMDRET_ZERO ; 
 int EIO ; 
 int /*<<< orphan*/  MAX_WRITE_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,short,short,union cmdret*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdif*,short,short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct cmdif *cif, short num, unsigned short rval, unsigned short lval)
{
	union cmdret rptr = CMDRET_ZERO;
	int i = 0;

	FUNC2("sent mixer %d: 0x%d 0x%d\n", num, rval, lval);
	do {
		FUNC1(cif, num, num, rval, lval);
		FUNC0(cif, num, num, &rptr);
		if (rptr.retwords[0] == lval && rptr.retwords[1] == rval)
			return 0;
	} while (i++ < MAX_WRITE_RETRY);
	FUNC2("sent mixer failed\n");
	return -EIO;
}