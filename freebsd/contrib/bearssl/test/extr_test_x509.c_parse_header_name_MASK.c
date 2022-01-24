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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  line_builder ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (size_t) ; 

__attribute__((used)) static char *
FUNC6(void)
{
	char *buf, *name;
	size_t u, v, w, len;

	buf = FUNC0(line_builder);
	len = FUNC1(line_builder);
	if (len < 2 || buf[0] != '[' || buf[len - 1] != ']') {
		return NULL;
	}
	u = 1;
	v = len - 1;
	while (u < v && FUNC3(buf[u])) {
		u ++;
	}
	while (u < v && FUNC3(buf[v - 1])) {
		v --;
	}
	if (u == v) {
		return NULL;
	}
	for (w = u; w < v; w ++) {
		if (!FUNC2(buf[w])) {
			return NULL;
		}
	}
	len = v - u;
	name = FUNC5(len + 1);
	FUNC4(name, buf + u, len);
	name[len] = 0;
	return name;
}