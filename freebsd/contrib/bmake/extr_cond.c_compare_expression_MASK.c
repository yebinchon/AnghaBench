#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int Token ;
struct TYPE_2__ {int /*<<< orphan*/  doNot; int /*<<< orphan*/  (* defProc ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/ * form; } ;
typedef  void* Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  COND ; 
 scalar_t__ FUNC0 (char*,double*) ; 
 char* FUNC1 (void*,void**,void**,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  PARSE_WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int TOK_ERROR ; 
 int TOK_FALSE ; 
 int* condExpr ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 TYPE_1__* if_info ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 void* lhsStrict ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static Token
FUNC10(Boolean doEval)
{
    Token	t;
    char	*lhs;
    char	*rhs;
    char	*op;
    void	*lhsFree;
    void	*rhsFree;
    Boolean lhsQuoted;
    Boolean rhsQuoted;
    double  	left, right;

    t = TOK_ERROR;
    rhs = NULL;
    lhsFree = rhsFree = FALSE;
    lhsQuoted = rhsQuoted = FALSE;
    
    /*
     * Parse the variable spec and skip over it, saving its
     * value in lhs.
     */
    lhs = FUNC1(doEval, &lhsQuoted, &lhsFree, lhsStrict);
    if (!lhs)
	goto done;

    /*
     * Skip whitespace to get to the operator
     */
    while (FUNC6((unsigned char) *condExpr))
	condExpr++;

    /*
     * Make sure the operator is a valid one. If it isn't a
     * known relational operator, pretend we got a
     * != 0 comparison.
     */
    op = condExpr;
    switch (*condExpr) {
	case '!':
	case '=':
	case '<':
	case '>':
	    if (condExpr[1] == '=') {
		condExpr += 2;
	    } else {
		condExpr += 1;
	    }
	    break;
	default:
	    if (!doEval) {
		t = TOK_FALSE;
		goto done;
	    }
	    /* For .ifxxx "..." check for non-empty string. */
	    if (lhsQuoted) {
		t = lhs[0] != 0;
		goto done;
	    }
	    /* For .ifxxx <number> compare against zero */
	    if (FUNC0(lhs, &left)) { 
		t = left != 0.0;
		goto done;
	    }
	    /* For .if ${...} check for non-empty string (defProc is ifdef). */
	    if (if_info->form[0] == 0) {
		t = lhs[0] != 0;
		goto done;
	    }
	    /* Otherwise action default test ... */
	    t = if_info->defProc(FUNC8(lhs), lhs) != if_info->doNot;
	    goto done;
    }

    while (FUNC6((unsigned char)*condExpr))
	condExpr++;

    if (*condExpr == '\0') {
	FUNC3(PARSE_WARNING,
		    "Missing right-hand-side of operator");
	goto done;
    }

    rhs = FUNC1(doEval, &rhsQuoted, &rhsFree, FALSE);
    if (!rhs)
	goto done;

    if (rhsQuoted || lhsQuoted) {
do_string_compare:
	if (((*op != '!') && (*op != '=')) || (op[1] != '=')) {
	    FUNC3(PARSE_WARNING,
    "String comparison operator should be either == or !=");
	    goto done;
	}

	if (FUNC2(COND)) {
	    FUNC4(debug_file, "lhs = \"%s\", rhs = \"%s\", op = %.2s\n",
		   lhs, rhs, op);
	}
	/*
	 * Null-terminate rhs and perform the comparison.
	 * t is set to the result.
	 */
	if (*op == '=') {
	    t = FUNC7(lhs, rhs) == 0;
	} else {
	    t = FUNC7(lhs, rhs) != 0;
	}
    } else {
	/*
	 * rhs is either a float or an integer. Convert both the
	 * lhs and the rhs to a double and compare the two.
	 */
    
	if (!FUNC0(lhs, &left) || !FUNC0(rhs, &right))
	    goto do_string_compare;

	if (FUNC2(COND)) {
	    FUNC4(debug_file, "left = %f, right = %f, op = %.2s\n", left,
		   right, op);
	}
	switch(op[0]) {
	case '!':
	    if (op[1] != '=') {
		FUNC3(PARSE_WARNING,
			    "Unknown operator");
		goto done;
	    }
	    t = (left != right);
	    break;
	case '=':
	    if (op[1] != '=') {
		FUNC3(PARSE_WARNING,
			    "Unknown operator");
		goto done;
	    }
	    t = (left == right);
	    break;
	case '<':
	    if (op[1] == '=') {
		t = (left <= right);
	    } else {
		t = (left < right);
	    }
	    break;
	case '>':
	    if (op[1] == '=') {
		t = (left >= right);
	    } else {
		t = (left > right);
	    }
	    break;
	}
    }

done:
    FUNC5(lhsFree);
    FUNC5(rhsFree);
    return t;
}