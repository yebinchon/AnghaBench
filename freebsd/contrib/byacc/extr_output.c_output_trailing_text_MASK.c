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
 int /*<<< orphan*/  code_file ; 
 int* cptr ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * input_file ; 
 scalar_t__ line ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
    int c, last;
    FILE *in;

    if (line == 0)
	return;

    in = input_file;
    c = *cptr;
    if (c == '\n')
    {
	++lineno;
	if ((c = FUNC0(in)) == EOF)
	    return;
	FUNC3();
	FUNC1(code_file, c);
	last = c;
    }
    else
    {
	FUNC3();
	do
	{
	    FUNC1(code_file, c);
	}
	while ((c = *++cptr) != '\n');
	FUNC1(code_file, c);
	last = '\n';
    }

    while ((c = FUNC0(in)) != EOF)
    {
	FUNC1(code_file, c);
	last = c;
    }

    if (last != '\n')
    {
	FUNC1(code_file, '\n');
    }
    FUNC2(code_file);
}