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
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char const*) ; 

int
FUNC4(int id, char *dst, size_t len)
{
	const char *name;
	char tmp[30];
	size_t n;

	name = FUNC0(id);
	if (name == NULL) {
		FUNC2(tmp, "unknown (%d)", id);
		name = tmp;
	}
	n = 1 + FUNC3(name);
	if (n > len) {
		if (len > 0) {
			dst[0] = 0;
		}
		return -1;
	}
	FUNC1(dst, name, n);
	return 0;
}