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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_rtx_filename ; 
 int read_rtx_lineno ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  string_obstack ; 

__attribute__((used)) static char *
FUNC7 (FILE *infile, int star_if_braced)
{
  char *stringbuf;
  int saw_paren = 0;
  int c, old_lineno;

  c = FUNC5 (infile);
  if (c == '(')
    {
      saw_paren = 1;
      c = FUNC5 (infile);
    }

  old_lineno = read_rtx_lineno;
  if (c == '"')
    stringbuf = FUNC4 (infile);
  else if (c == '{')
    {
      if (star_if_braced)
	FUNC2 (&string_obstack, '*');
      stringbuf = FUNC3 (infile);
    }
  else
    FUNC1 (infile, "expected `\"' or `{', found `%c'", c);

  if (saw_paren)
    {
      c = FUNC5 (infile);
      if (c != ')')
	FUNC0 (infile, ')', c);
    }

  FUNC6 (stringbuf, read_rtx_filename, old_lineno);
  return stringbuf;
}