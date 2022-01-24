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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

const char *FUNC5(const char *in)
{
	const char *p;
	size_t reslen;
	char *res;
	size_t l;

	reslen = FUNC3(in) + FUNC3("\"\"") + 1;

	p = in;
	for (;;) {
		l = FUNC2(p, "\"\\");
		p += l;

		if (p[0] == '\0')
			break;

		reslen++;
		p++;
	}

	res = FUNC0(reslen);
	res[0] = '\0';

	FUNC1(res, "\"");

	p = in;
	for (;;) {
		l = FUNC2(p, "\"\\");
		FUNC4(res, p, l);
		p += l;

		if (p[0] == '\0')
			break;

		FUNC1(res, "\\");
		FUNC4(res, p++, 1);
	}

	FUNC1(res, "\"");
	return res;
}