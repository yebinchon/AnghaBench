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
typedef  union yystype {int dummy; } yystype ;
typedef  int /*<<< orphan*/  arith_t ;

/* Variables and functions */
 int ARITH_BINOP_MAX ; 
 int ARITH_BINOP_MIN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int last_token ; 
 int /*<<< orphan*/  FUNC3 (int,union yystype*,int,int) ; 
 int FUNC4 () ; 
 union yystype yylval ; 

__attribute__((used)) static arith_t FUNC5(arith_t a, int op, int precedence, int noeval)
{
	for (;;) {
		union yystype val;
		arith_t b;
		int op2;
		int token;

		token = FUNC4();
		val = yylval;

		b = FUNC3(token, &val, FUNC4(), noeval);

		op2 = last_token;
		if (op2 >= ARITH_BINOP_MIN && op2 < ARITH_BINOP_MAX &&
		    FUNC2(op2, op)) {
			b = FUNC5(b, op2, FUNC0(op), noeval);
			op2 = last_token;
		}

		a = noeval ? b : FUNC1(op, a, b);

		if (op2 < ARITH_BINOP_MIN || op2 >= ARITH_BINOP_MAX ||
		    FUNC0(op2) >= precedence)
			return a;

		op = op2;
	}
}