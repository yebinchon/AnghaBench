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
 int /*<<< orphan*/  init_exit_sections ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

__attribute__((used)) static char *FUNC4(const char *s)
{
	if (FUNC1(s, init_exit_sections)) {
		char *p = FUNC0(20);
		char *r = p;

		*p++ = '_';
		*p++ = '_';
		if (*s == '.')
			s++;
		while (*s && *s != '.')
			*p++ = *s++;
		*p = '\0';
		if (*s == '.')
			s++;
		if (FUNC3(s, "rodata") != NULL)
			FUNC2(p, "const ");
		else if (FUNC3(s, "data") != NULL)
			FUNC2(p, "data ");
		else
			FUNC2(p, " ");
		return r; /* we leak her but we do not care */
	} else {
		return "";
	}
}