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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC7 (FILE *infile, char *tmp_char)
{
  int c;

  c = FUNC5 (infile);
  if (c != '[')
    FUNC2 (infile, '[', c);

  while ( (c = FUNC5 (infile)) != ']')
    {
      char *expr;
      int value;

      if (c != '(')
	FUNC2 (infile, '(', c);

      FUNC3 (tmp_char, infile);
      FUNC6 (infile, tmp_char);
      value = FUNC1 (tmp_char);

      c = FUNC5 (infile);
      if (c != '"')
	FUNC2 (infile, '"', c);
      expr = FUNC4 (infile);

      c = FUNC5 (infile);
      if (c != ')')
	FUNC2 (infile, ')', c);

      FUNC0 (expr, value);
    }
  c = FUNC5 (infile);
  if (c != ')')
    FUNC2 (infile, ')', c);
}