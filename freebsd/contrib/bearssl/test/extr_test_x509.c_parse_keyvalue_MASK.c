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
typedef  int /*<<< orphan*/  HT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  line_builder ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 

__attribute__((used)) static int
FUNC9(HT *d)
{
	char *buf, *name, *value;
	size_t u, len;

	buf = FUNC2(line_builder);
	len = FUNC3(line_builder);
	for (u = 0; u < len; u ++) {
		if (!FUNC4(buf[u])) {
			break;
		}
	}
	if (u == 0) {
		return -1;
	}
	name = FUNC8(u + 1);
	FUNC6(name, buf, u);
	name[u] = 0;
	if (FUNC0(d, name) != NULL) {
		FUNC7(name);
		return -1;
	}
	while (u < len && FUNC5(buf[u])) {
		u ++;
	}
	if (u >= len || buf[u] != '=') {
		FUNC7(name);
		return -1;
	}
	u ++;
	while (u < len && FUNC5(buf[u])) {
		u ++;
	}
	value = FUNC8(len - u + 1);
	FUNC6(value, buf + u, len - u);
	value[len - u] = 0;
	FUNC1(d, name, value);
	FUNC7(name);
	return 0;
}