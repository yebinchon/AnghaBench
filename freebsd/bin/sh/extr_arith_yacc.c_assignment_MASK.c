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
union yystype {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  sresult ;
typedef  int /*<<< orphan*/  arith_t ;

/* Variables and functions */
 int ARITH_ASS ; 
 int ARITH_ASS_MAX ; 
 int ARITH_ASS_MIN ; 
 char* ARITH_FORMAT_STR ; 
 int ARITH_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,union yystype*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 union yystype yylval ; 

__attribute__((used)) static arith_t FUNC7(int var, int noeval)
{
	union yystype val = yylval;
	int op = FUNC6();
	arith_t result;
	char sresult[FUNC0(result) + 1];

	if (var != ARITH_VAR)
		return FUNC2(var, &val, op, noeval);

	if (op != ARITH_ASS && (op < ARITH_ASS_MIN || op >= ARITH_ASS_MAX))
		return FUNC2(var, &val, op, noeval);

	result = FUNC7(FUNC6(), noeval);
	if (noeval)
		return result;

	if (op != ARITH_ASS)
		result = FUNC3(op - 11, FUNC1(val.name), result);
	FUNC5(sresult, sizeof(sresult), ARITH_FORMAT_STR, result);
	FUNC4(val.name, sresult, 0);
	return result;
}