#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ class; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bucket ;

/* Variables and functions */
 int EOF ; 
 int L_PAREN ; 
#define  MARK 130 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  START 129 
 scalar_t__ TERM ; 
#define  TEXT 128 
 char* FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* cptr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_1__* goal ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  line ; 
 void* lineno ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 void* rescan_lineno ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void
FUNC14(void)
{
    int c;
    bucket *bp;
    char *s_cptr;
    int s_lineno;
#if defined(YYBTYACC)
    char *args = NULL;
    int argslen = 0;
#endif

    for (;;)
    {
	c = FUNC7();
	if (c != '%')
	    break;
	s_cptr = cptr;
	switch (FUNC6())
	{
	case MARK:
	    FUNC8();

	case TEXT:
	    FUNC2();
	    break;

	case START:
	    FUNC3();
	    break;

	default:
	    FUNC11(lineno, line, s_cptr);
	}
    }

    c = FUNC7();
    if (!FUNC5(c) && c != '_' && c != '.' && c != '_')
	FUNC11(lineno, line, cptr);
    bp = FUNC4();
    if (goal == 0)
    {
	if (bp->class == TERM)
	    FUNC12(bp->name);
	goal = bp;
    }

    s_lineno = lineno;
    c = FUNC7();
    if (c == EOF)
	FUNC13();
    rescan_lineno = lineno;	/* line# for possible inherited args rescan */
#if defined(YYBTYACC)
    if (c == L_PAREN)
    {
	++cptr;
	args = copy_args(&argslen);
	NO_SPACE(args);
	c = nextc();
    }
#endif
    if (c != ':')
	FUNC11(lineno, line, cptr);
    FUNC10(bp, s_lineno);
#if defined(YYBTYACC)
    parse_arginfo(bp, args, argslen);
#endif
    ++cptr;
}