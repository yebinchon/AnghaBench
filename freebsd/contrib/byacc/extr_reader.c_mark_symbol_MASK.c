#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ prec; int /*<<< orphan*/  assoc; } ;
typedef  TYPE_1__ bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UNDEFINED ; 
 int* cptr ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  lineno ; 
 int FUNC4 () ; 
 size_t nrules ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * rassoc ; 
 scalar_t__* rprec ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC7(void)
{
    int c;
    bucket *bp = NULL;

    c = cptr[1];
    if (c == '%' || c == '\\')
    {
	cptr += 2;
	return (1);
    }

    if (c == '=')
	cptr += 2;
    else if ((c == 'p' || c == 'P') &&
	     ((c = cptr[2]) == 'r' || c == 'R') &&
	     ((c = cptr[3]) == 'e' || c == 'E') &&
	     ((c = cptr[4]) == 'c' || c == 'C') &&
	     ((c = cptr[5], !FUNC0(c))))
	cptr += 5;
    else
	FUNC6(lineno, line, cptr);

    c = FUNC4();
    if (FUNC3(c) || c == '_' || c == '.' || c == '$')
	bp = FUNC2();
    else if (c == '\'' || c == '"')
	bp = FUNC1();
    else
    {
	FUNC6(lineno, line, cptr);
	/*NOTREACHED */
    }

    if (rprec[nrules] != UNDEFINED && bp->prec != rprec[nrules])
	FUNC5();

    rprec[nrules] = bp->prec;
    rassoc[nrules] = bp->assoc;
    return (0);
}