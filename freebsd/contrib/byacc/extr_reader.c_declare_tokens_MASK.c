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
struct TYPE_5__ {char* tag; scalar_t__ prec; scalar_t__ value; int /*<<< orphan*/  name; scalar_t__ assoc; int /*<<< orphan*/  class; } ;
typedef  TYPE_1__ bucket ;
typedef  scalar_t__ Value_t ;
typedef  scalar_t__ Assoc_t ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  TERM ; 
 int TOKEN ; 
 scalar_t__ UNDEFINED ; 
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 () ; 
 TYPE_1__* goal ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 () ; 
 scalar_t__ prec ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(int assoc)
{
    int c;
    bucket *bp;
    Value_t value;
    char *tag = 0;

    if (assoc != TOKEN)
	++prec;

    c = FUNC6();
    if (c == EOF)
	FUNC11();
    if (c == '<')
    {
	tag = FUNC3();
	c = FUNC6();
	if (c == EOF)
	    FUNC11();
    }

    for (;;)
    {
	if (FUNC4(c) || c == '_' || c == '.' || c == '$')
	    bp = FUNC1();
	else if (c == '\'' || c == '"')
	    bp = FUNC0();
	else
	    return;

	if (bp == goal)
	    FUNC10(bp->name);
	bp->class = TERM;

	if (tag)
	{
	    if (bp->tag && tag != bp->tag)
		FUNC8(bp->name);
	    bp->tag = tag;
	}

	if (assoc != TOKEN)
	{
	    if (bp->prec && prec != bp->prec)
		FUNC7(bp->name);
	    bp->assoc = (Assoc_t)assoc;
	    bp->prec = prec;
	}

	c = FUNC6();
	if (c == EOF)
	    FUNC11();

	value = UNDEFINED;
	if (FUNC5(c))
	{
	    value = FUNC2();
	    if (bp->value != UNDEFINED && value != bp->value)
		FUNC9(bp->name);
	    bp->value = value;
	    c = FUNC6();
	    if (c == EOF)
		FUNC11();
	}
    }
}