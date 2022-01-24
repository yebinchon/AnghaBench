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
struct TYPE_2__ {int ival; int /*<<< orphan*/  dval; } ;

/* Variables and functions */
 int BSZ ; 
 int CONST ; 
 int DREG ; 
 int VREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ yylval ; 

int
FUNC7(void)
{
    int c;

    while ((c = FUNC1()) == ' ')
    {				/* skip over blanks */
    }

    if (FUNC4(c))
    {
	yylval.ival = c - 'A';
	return (VREG);
    }
    if (FUNC3(c))
    {
	yylval.ival = c - 'a';
	return (DREG);
    }

    if (FUNC2(c) || c == '.')
    {
	/* gobble up digits, points, exponents */
	char buf[BSZ + 1], *cp = buf;
	int dot = 0, expr = 0;

	for (; (cp - buf) < BSZ; ++cp, c = FUNC1())
	{

	    *cp = (char) c;
	    if (FUNC2(c))
		continue;
	    if (c == '.')
	    {
		if (dot++ || expr)
		    return ('.');	/* will cause syntax error */
		continue;
	    }

	    if (c == 'e')
	    {
		if (expr++)
		    return ('e');	/*  will  cause  syntax  error  */
		continue;
	    }

	    /*  end  of  number  */
	    break;
	}
	*cp = '\0';

	if ((cp - buf) >= BSZ)
	    FUNC5("constant  too  long:  truncated\n");
	else
	    FUNC6(c, stdin);	/*  push  back  last  char  read  */
	yylval.dval = FUNC0(buf);
	return (CONST);
    }
    return (c);
}