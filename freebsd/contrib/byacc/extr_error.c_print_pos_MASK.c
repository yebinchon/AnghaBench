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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC3(const char *st_line, const char *st_cptr)
{
    const char *s;

    if (st_line == 0)
	return;
    for (s = st_line; *s != '\n'; ++s)
    {
	if (FUNC1(FUNC0(*s)) || *s == '\t')
	    FUNC2(*s, stderr);
	else
	    FUNC2('?', stderr);
    }
    FUNC2('\n', stderr);
    for (s = st_line; s < st_cptr; ++s)
    {
	if (*s == '\t')
	    FUNC2('\t', stderr);
	else
	    FUNC2(' ', stderr);
    }
    FUNC2('^', stderr);
    FUNC2('\n', stderr);
}