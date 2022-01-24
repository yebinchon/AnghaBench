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
struct mstring {int dummy; } ;
struct ainfo {int a_line; int a_cptr; int /*<<< orphan*/  a_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* cptr ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* line ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC3 (struct mstring*,char) ; 
 char* FUNC4 (struct mstring*) ; 
 struct mstring* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ainfo*) ; 

__attribute__((used)) static char *
FUNC7(void)
{
    struct mstring *temp = FUNC5();
    int c;

    c = *cptr;
    if (c == '/')
    {
	FUNC3(temp, '*');
	while ((c = *++cptr) != '\n')
	{
	    FUNC3(temp, c);
	    if (c == '*' && cptr[1] == '/')
		FUNC3(temp, ' ');
	}
	FUNC3(temp, '*');
	FUNC3(temp, '/');
    }
    else if (c == '*')
    {
	struct ainfo a;
	a.a_lineno = lineno;
	a.a_line = FUNC1();
	a.a_cptr = a.a_line + (cptr - line - 1);

	FUNC3(temp, c);
	++cptr;
	for (;;)
	{
	    c = *cptr++;
	    FUNC3(temp, c);
	    if (c == '*' && *cptr == '/')
	    {
		FUNC3(temp, '/');
		++cptr;
		FUNC0(a.a_line);
		return FUNC4(temp);
	    }
	    if (c == '\n')
	    {
		FUNC2();
		if (line == NULL)
		    FUNC6(&a);
	    }
	}
    }
    return FUNC4(temp);
}