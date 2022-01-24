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
 char** environ ; 
 char* FUNC0 (char*,char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(const char *name, int *offset)
{
	size_t i, len;
	char *p, *q;

	len = FUNC1(name);
	for (i = 0; (q = environ[i]); i++) {
		p = FUNC0(q, '=');
		if (p == NULL || p - q != len)
			continue;
		if (FUNC2(name, q, len) == 0) {
			*offset = i;
			return q + len + 1;
		}
	}
	*offset = i;
	return NULL;
}