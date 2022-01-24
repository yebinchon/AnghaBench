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
 int /*<<< orphan*/  ARITH_MAX_PREC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int last_token ; 
 int /*<<< orphan*/  FUNC1 (int,union yystype*,int,int) ; 

__attribute__((used)) static arith_t FUNC2(int token, union yystype *val, int op, int noeval)
{
	arith_t a = FUNC1(token, val, op, noeval);

	op = last_token;
	if (op < ARITH_BINOP_MIN || op >= ARITH_BINOP_MAX)
		return a;

	return FUNC0(a, op, ARITH_MAX_PREC, noeval);
}