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
 scalar_t__ BINOP ; 
 int EOI ; 
#define  FILTT 130 
 int LPAREN ; 
 int RPAREN ; 
#define  STREZ 129 
#define  STRNZ 128 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ UNOP ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ nargc ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  parenlevel ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ ** t_wp ; 

__attribute__((used)) static int
FUNC9(enum token n)
{
	enum token nn;
	int res;

	if (n == EOI)
		return 0;		/* missing expression */
	if (n == LPAREN) {
		parenlevel++;
		if ((nn = FUNC8(nargc > 0 ? (--nargc, *++t_wp) : NULL)) ==
		    RPAREN) {
			parenlevel--;
			return 0;	/* missing expression */
		}
		res = FUNC5(nn);
		if (FUNC8(nargc > 0 ? (--nargc, *++t_wp) : NULL) != RPAREN)
			FUNC7(NULL, "closing paren expected");
		parenlevel--;
		return res;
	}
	if (FUNC0(n) == UNOP) {
		/* unary expression */
		if (--nargc == 0)
			FUNC7(NULL, "argument expected"); /* impossible */
		switch (n) {
		case STREZ:
			return FUNC6(*++t_wp) == 0;
		case STRNZ:
			return FUNC6(*++t_wp) != 0;
		case FILTT:
			return FUNC4(FUNC3(*++t_wp));
		default:
			return FUNC2(*++t_wp, n);
		}
	}

	nn = FUNC8(nargc > 0 ? t_wp[1] : NULL);
	if (FUNC0(nn) == BINOP)
		return FUNC1(nn);

	return FUNC6(*t_wp) > 0;
}