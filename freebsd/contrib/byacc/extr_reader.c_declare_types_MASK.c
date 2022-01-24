#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* tag; int /*<<< orphan*/  name; scalar_t__ args; } ;
typedef  TYPE_1__ bucket ;

/* Variables and functions */
 int EOF ; 
 int L_PAREN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(void)
{
    int c;
    bucket *bp = NULL;
    char *tag = NULL;

    c = FUNC5();
    if (c == EOF)
	FUNC7();
    if (c == '<')
	tag = FUNC3();

    for (;;)
    {
	c = FUNC5();
	if (c == EOF)
	    FUNC7();
	if (FUNC4(c) || c == '_' || c == '.' || c == '$')
	{
	    bp = FUNC2();
#if defined(YYBTYACC)
	    if (nextc() == L_PAREN)
		declare_argtypes(bp);
	    else
		bp->args = 0;
#endif
	}
	else if (c == '\'' || c == '"')
	{
	    bp = FUNC1();
#if defined(YYBTYACC)
	    bp->args = 0;
#endif
	}
	else
	    return;

	if (tag)
	{
	    if (bp->tag && tag != bp->tag)
		FUNC6(bp->name);
	    bp->tag = tag;
	}
    }
}