#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num; } ;
typedef  TYPE_1__ HistEvent ;

/* Variables and functions */
 int /*<<< orphan*/  H_FIRST ; 
 int /*<<< orphan*/  H_LAST ; 
 int /*<<< orphan*/  H_NEXT ; 
 int /*<<< orphan*/  H_NEXT_EVENT ; 
 int /*<<< orphan*/  H_PREV_STR ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  hist ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(const char *str, int last)
{
	HistEvent he;
	const char *s = str;
	int relative = 0;
	int i, retval;

	retval = FUNC2(hist, &he, H_FIRST);
	switch (*s) {
	case '-':
		relative = 1;
		/*FALLTHROUGH*/
	case '+':
		s++;
	}
	if (FUNC3(s)) {
		i = FUNC0(s);
		if (relative) {
			while (retval != -1 && i--) {
				retval = FUNC2(hist, &he, H_NEXT);
			}
			if (retval == -1)
				retval = FUNC2(hist, &he, H_LAST);
		} else {
			retval = FUNC2(hist, &he, H_NEXT_EVENT, i);
			if (retval == -1) {
				/*
				 * the notion of first and last is
				 * backwards to that of the history package
				 */
				retval = FUNC2(hist, &he, last ? H_FIRST : H_LAST);
			}
		}
		if (retval == -1)
			FUNC1("history number %s not found (internal error)",
			       str);
	} else {
		/*
		 * pattern
		 */
		retval = FUNC2(hist, &he, H_PREV_STR, str);
		if (retval == -1)
			FUNC1("history pattern not found: %s", str);
	}
	return (he.num);
}