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
typedef  int uint_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  f_attr_t ;

/* Variables and functions */
 int F_ATTR_ALL ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(uint64_t xvs)
{
	uint_t bits;
	int idx = 0;

	if (xvs == 0)
		return;

	(void) FUNC1("-------------------\n");
	(void) FUNC1("Attribute bit(s) set:\n");
	(void) FUNC1("-------------------\n");

	bits = xvs & ((1 << F_ATTR_ALL) - 1);
	while (bits) {
		uint_t rest = bits >> 1;
		if (bits & 1) {
			(void) FUNC1("%s", FUNC0((f_attr_t)idx));
			if (rest)
				(void) FUNC1(", ");
		}
		idx++;
		bits = rest;
	}
	(void) FUNC1("\n");
}