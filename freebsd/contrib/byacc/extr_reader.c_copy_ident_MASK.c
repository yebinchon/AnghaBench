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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int* cptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  lineno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  outline ; 
 int /*<<< orphan*/ * output_file ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void)
{
    int c;
    FILE *f = output_file;

    c = FUNC1();
    if (c == EOF)
	FUNC4();
    if (c != '"')
	FUNC3(lineno, line, cptr);
    ++outline;
    FUNC0(f, "#ident \"");
    for (;;)
    {
	c = *++cptr;
	if (c == '\n')
	{
	    FUNC0(f, "\"\n");
	    return;
	}
	FUNC2(c, f);
	if (c == '"')
	{
	    FUNC2('\n', f);
	    ++cptr;
	    return;
	}
    }
}