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
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int E2BIG ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,char*,...) ; 

int FUNC4(Dwarf_Die *vr_die, char *buf, int len)
{
	int ret, ret2;

	ret = FUNC0(vr_die, buf, len);
	if (ret < 0) {
		FUNC2("Failed to get type, make it unknown.\n");
		ret = FUNC3(buf, len, "(unknown_type)");
	}
	if (ret > 0) {
		ret2 = FUNC3(buf + ret, len - ret, "\t%s",
				FUNC1(vr_die));
		ret = (ret2 >= len - ret) ? -E2BIG : ret2 + ret;
	}
	return ret;
}