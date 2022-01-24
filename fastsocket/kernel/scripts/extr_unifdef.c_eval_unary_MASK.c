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
struct ops {int dummy; } ;
typedef  scalar_t__ Linetype ;

/* Variables and functions */
 scalar_t__ LT_FALSE ; 
 scalar_t__ LT_IF ; 
 scalar_t__ LT_TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ops const*,...) ; 
 scalar_t__ FUNC1 (char const) ; 
 int eval_ops ; 
 scalar_t__ FUNC2 (int,int*,char const**) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 int keepthis ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*,int) ; 
 int FUNC8 (char const*,char**,int /*<<< orphan*/ ) ; 
 char** value ; 

__attribute__((used)) static Linetype
FUNC9(const struct ops *ops, int *valp, const char **cpp)
{
	const char *cp;
	char *ep;
	int sym;

	cp = FUNC5(*cpp);
	if (*cp == '!') {
		FUNC0("eval%d !", ops - eval_ops);
		cp++;
		if (FUNC9(ops, valp, &cp) == LT_IF) {
			*cpp = cp;
			return (LT_IF);
		}
		*valp = !*valp;
	} else if (*cp == '(') {
		cp++;
		FUNC0("eval%d (", ops - eval_ops);
		if (FUNC2(eval_ops, valp, &cp) == LT_IF)
			return (LT_IF);
		cp = FUNC5(cp);
		if (*cp++ != ')')
			return (LT_IF);
	} else if (FUNC4((unsigned char)*cp)) {
		FUNC0("eval%d number", ops - eval_ops);
		*valp = FUNC8(cp, &ep, 0);
		cp = FUNC6(cp);
	} else if (FUNC7(cp, "defined", 7) == 0 && FUNC1(cp[7])) {
		cp = FUNC5(cp+7);
		FUNC0("eval%d defined", ops - eval_ops);
		if (*cp++ != '(')
			return (LT_IF);
		cp = FUNC5(cp);
		sym = FUNC3(cp);
		cp = FUNC6(cp);
		cp = FUNC5(cp);
		if (*cp++ != ')')
			return (LT_IF);
		if (sym >= 0)
			*valp = (value[sym] != NULL);
		else {
			*cpp = cp;
			return (LT_IF);
		}
		keepthis = false;
	} else if (!FUNC1(*cp)) {
		FUNC0("eval%d symbol", ops - eval_ops);
		sym = FUNC3(cp);
		if (sym < 0)
			return (LT_IF);
		if (value[sym] == NULL)
			*valp = 0;
		else {
			*valp = FUNC8(value[sym], &ep, 0);
			if (*ep != '\0' || ep == value[sym])
				return (LT_IF);
		}
		cp = FUNC6(cp);
		keepthis = false;
	} else {
		FUNC0("eval%d bad expr", ops - eval_ops);
		return (LT_IF);
	}

	*cpp = cp;
	FUNC0("eval%d = %d", ops - eval_ops, *valp);
	return (*valp ? LT_TRUE : LT_FALSE);
}