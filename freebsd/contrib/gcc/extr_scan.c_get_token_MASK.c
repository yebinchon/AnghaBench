#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__* ptr; scalar_t__* base; } ;
typedef  TYPE_1__ sstring ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHAR_TOKEN ; 
 int EOF ; 
 int IDENTIFIER_TOKEN ; 
 int INT_TOKEN ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int STRING_TOKEN ; 
 scalar_t__ FUNC4 (scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lineno ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ source_filename ; 
 scalar_t__ source_lineno ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 

int
FUNC10 (FILE *fp, sstring *s)
{
  int c;

  s->ptr = s->base;
 retry:
  c = ' ';
  c = FUNC8 (fp, c);
  if (c == '\n')
    {
      source_lineno++;
      lineno++;
      goto retry;
    }
  if (c == '#')
    {
      c = FUNC10 (fp, s);
      if (c == INT_TOKEN)
	{
	  source_lineno = FUNC4 (s->base) - 1; /* '\n' will add 1 */
	  FUNC10 (fp, &source_filename);
	}
      for (;;)
	{
	  c = FUNC5 (fp);
	  if (c == EOF)
	    return EOF;
	  if (c == '\n')
	    {
	    source_lineno++;
	    lineno++;
	    goto retry;
	    }
	}
    }
  if (c == EOF)
    return EOF;
  if (FUNC0 (c))
    {
      do
	{
	  FUNC3 (s, c);
	  c = FUNC5 (fp);
	} while (c != EOF && FUNC0 (c));
      FUNC9 (c, fp);
      c = INT_TOKEN;
      goto done;
    }
  if (FUNC1 (c))
    {
      c = FUNC6 (fp, s, c);
      FUNC9 (c, fp);
      return IDENTIFIER_TOKEN;
    }
  if (c == '\'' || c == '"')
    {
      c = FUNC7 (fp, s, c);
      FUNC9 (c, fp);
      return c == '\'' ? CHAR_TOKEN : STRING_TOKEN;
    }
  FUNC3 (s, c);
 done:
  FUNC2 (s, 1);
  *s->ptr = 0;
  return c;
}