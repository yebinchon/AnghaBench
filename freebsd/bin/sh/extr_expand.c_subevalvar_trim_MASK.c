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
struct nodelist {int dummy; } ;

/* Variables and functions */
 int EXP_CASE ; 
 int EXP_TILDE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
#define  VSTRIMLEFT 131 
#define  VSTRIMLEFTMAX 130 
#define  VSTRIMRIGHT 129 
#define  VSTRIMRIGHTMAX 128 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (char const*,struct nodelist**,int,int /*<<< orphan*/ *) ; 
 char* expdest ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 char* FUNC6 () ; 

__attribute__((used)) static const char *
FUNC7(const char *p, struct nodelist **restrict argbackq, int strloc,
    int subtype, int startloc)
{
	char *startp;
	char *loc = NULL;
	char *str;
	int c = 0;
	int amount;

	p = FUNC3(p, argbackq, EXP_CASE | EXP_TILDE, NULL);
	FUNC0(expdest);
	startp = FUNC6() + startloc;
	str = FUNC6() + strloc;

	switch (subtype) {
	case VSTRIMLEFT:
		for (loc = startp; loc < str; loc++) {
			c = *loc;
			*loc = '\0';
			if (FUNC4(str, startp)) {
				*loc = c;
				FUNC5(str, loc, startp);
				return p;
			}
			*loc = c;
		}
		break;

	case VSTRIMLEFTMAX:
		for (loc = str - 1; loc >= startp;) {
			c = *loc;
			*loc = '\0';
			if (FUNC4(str, startp)) {
				*loc = c;
				FUNC5(str, loc, startp);
				return p;
			}
			*loc = c;
			loc--;
		}
		break;

	case VSTRIMRIGHT:
		for (loc = str - 1; loc >= startp;) {
			if (FUNC4(str, loc)) {
				amount = loc - expdest;
				FUNC1(amount, expdest);
				return p;
			}
			loc--;
		}
		break;

	case VSTRIMRIGHTMAX:
		for (loc = startp; loc < str - 1; loc++) {
			if (FUNC4(str, loc)) {
				amount = loc - expdest;
				FUNC1(amount, expdest);
				return p;
			}
		}
		break;


	default:
		FUNC2();
	}
	amount = (expdest - FUNC6() - strloc) + 1;
	FUNC1(-amount, expdest);
	return p;
}