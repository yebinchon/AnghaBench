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
typedef  enum token { ____Placeholder_token } token ;

/* Variables and functions */
#define  FILEQ 140 
#define  FILNT 139 
#define  FILOT 138 
#define  INTEQ 137 
#define  INTGE 136 
#define  INTGT 135 
#define  INTLE 134 
#define  INTLT 133 
#define  INTNE 132 
#define  STREQ 131 
#define  STRGT 130 
#define  STRLT 129 
#define  STRNE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 scalar_t__ nargc ; 
 int FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 char** t_wp ; 

__attribute__((used)) static int
FUNC7(enum token n)
{
	const char *opnd1, *op, *opnd2;

	opnd1 = *t_wp;
	op = nargc > 0 ? (--nargc, *++t_wp) : NULL;

	if ((opnd2 = nargc > 0 ? (--nargc, *++t_wp) : NULL) == NULL)
		FUNC6(op, "argument expected");

	switch (n) {
	case STREQ:
		return FUNC5(opnd1, opnd2) == 0;
	case STRNE:
		return FUNC5(opnd1, opnd2) != 0;
	case STRLT:
		return FUNC5(opnd1, opnd2) < 0;
	case STRGT:
		return FUNC5(opnd1, opnd2) > 0;
	case INTEQ:
		return FUNC2(opnd1, opnd2) == 0;
	case INTNE:
		return FUNC2(opnd1, opnd2) != 0;
	case INTGE:
		return FUNC2(opnd1, opnd2) >= 0;
	case INTGT:
		return FUNC2(opnd1, opnd2) > 0;
	case INTLE:
		return FUNC2(opnd1, opnd2) <= 0;
	case INTLT:
		return FUNC2(opnd1, opnd2) < 0;
	case FILNT:
		return FUNC3 (opnd1, opnd2);
	case FILOT:
		return FUNC4 (opnd1, opnd2);
	case FILEQ:
		return FUNC1 (opnd1, opnd2);
	default:
		FUNC0();
		/* NOTREACHED */
	}
}