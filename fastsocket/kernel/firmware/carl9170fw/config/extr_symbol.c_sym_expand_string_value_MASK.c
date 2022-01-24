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
struct symbol {int dummy; } ;

/* Variables and functions */
 int SYMBOL_MAXLENGTH ; 
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*) ; 
 struct symbol* FUNC8 (char*) ; 
 char* FUNC9 (struct symbol*) ; 

const char *FUNC10(const char *in)
{
	const char *src;
	char *res;
	size_t reslen;

	reslen = FUNC5(in) + 1;
	res = FUNC1(reslen);
	res[0] = '\0';

	while ((src = FUNC4(in, '$'))) {
		char *p, name[SYMBOL_MAXLENGTH];
		const char *symval = "";
		struct symbol *sym;
		size_t newlen;

		FUNC6(res, in, src - in);
		src++;

		p = name;
		while (FUNC0(*src) || *src == '_')
			*p++ = *src++;
		*p = '\0';

		sym = FUNC8(name);
		if (sym != NULL) {
			FUNC7(sym);
			symval = FUNC9(sym);
		}

		newlen = FUNC5(res) + FUNC5(symval) + FUNC5(src) + 1;
		if (newlen > reslen) {
			reslen = newlen;
			res = FUNC2(res, reslen);
		}

		FUNC3(res, symval);
		in = src;
	}
	FUNC3(res, in);

	return res;
}