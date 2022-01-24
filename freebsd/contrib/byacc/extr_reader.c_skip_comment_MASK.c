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
struct ainfo {int a_line; int a_cptr; int /*<<< orphan*/  a_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* cptr ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* line ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC3 (struct ainfo*) ; 

__attribute__((used)) static void
FUNC4(void)
{
    char *s;
    struct ainfo a;
    a.a_lineno = lineno;
    a.a_line = FUNC1();
    a.a_cptr = a.a_line + (cptr - line);

    s = cptr + 2;
    for (;;)
    {
	if (*s == '*' && s[1] == '/')
	{
	    cptr = s + 2;
	    FUNC0(a.a_line);
	    return;
	}
	if (*s == '\n')
	{
	    FUNC2();
	    if (line == NULL)
		FUNC3(&a);
	    s = cptr;
	}
	else
	    ++s;
    }
}