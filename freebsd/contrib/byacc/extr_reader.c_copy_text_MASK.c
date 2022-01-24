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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char R_CURL ; 
 char* FUNC1 () ; 
 char* FUNC2 (int) ; 
 char* cptr ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  input_file_name ; 
 int /*<<< orphan*/  lflag ; 
 char* line ; 
 char* line_format ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * text_file ; 
 int /*<<< orphan*/  FUNC9 (struct ainfo*) ; 

__attribute__((used)) static void
FUNC10(void)
{
    int c;
    FILE *f = text_file;
    int need_newline = 0;
    struct ainfo a;
    a.a_lineno = lineno;
    a.a_line = FUNC3();
    a.a_cptr = a.a_line + (cptr - line - 2);

    if (*cptr == '\n')
    {
	FUNC7();
	if (line == NULL)
	    FUNC9(&a);
    }
    if (!lflag)
	FUNC4(f, line_format, lineno, input_file_name);

  loop:
    c = *cptr++;
    switch (c)
    {
    case '\n':
	FUNC8('\n', f);
	need_newline = 0;
	FUNC7();
	if (line)
	    goto loop;
	FUNC9(&a);

    case '\'':
    case '"':
	FUNC8(c, f);
	{
	    char *s = FUNC2(c);
	    FUNC5(s, f);
	    FUNC6(s);
	}
	need_newline = 1;
	goto loop;

    case '/':
	FUNC8(c, f);
	{
	    char *s = FUNC1();
	    FUNC5(s, f);
	    FUNC6(s);
	}
	need_newline = 1;
	goto loop;

    case '%':
    case '\\':
	if (*cptr == R_CURL)
	{
	    if (need_newline)
		FUNC8('\n', f);
	    ++cptr;
	    FUNC0(a.a_line);
	    return;
	}
	/* FALLTHRU */

    default:
	FUNC8(c, f);
	need_newline = 1;
	goto loop;
    }
}