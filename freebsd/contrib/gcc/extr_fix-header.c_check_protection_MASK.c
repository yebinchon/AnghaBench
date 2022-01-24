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
struct TYPE_5__ {scalar_t__* base; } ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__ buf ; 
 int FUNC3 (TYPE_1__*,char) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (char) ; 
 int lineno ; 
 scalar_t__ FUNC6 (scalar_t__*,char*) ; 
 char* FUNC7 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC8 (int *ifndef_line, int *endif_line)
{
  int c;
  int if_nesting = 1; /* Level of nesting of #if's */
  char *protect_name = NULL; /* Identifier following initial #ifndef */
  int define_seen = 0;

  /* Skip initial white space (including comments).  */
  for (;; lineno++)
    {
      c = FUNC5 (' ');
      if (c == EOF)
	return 0;
      if (c != '\n')
	break;
    }
  if (c != '#')
    return 0;
  c = FUNC4 (&buf, FUNC5 (' '));
  if (FUNC2 (&buf) == 0 || FUNC6 (buf.base, "ifndef") != 0)
    return 0;

  /* So far so good: We've seen an initial #ifndef.  */
  *ifndef_line = lineno;
  c = FUNC4 (&buf, FUNC5 (c));
  if (FUNC2 (&buf) == 0 || c == EOF)
    return 0;
  protect_name = FUNC7 (buf.base);

  (void) FUNC1 (c);
  c = FUNC3 (&buf, '\n');
  if (c == EOF)
    return 0;
  lineno++;

  for (;;)
    {
      c = FUNC5 (' ');
      if (c == EOF)
	return 0;
      if (c == '\n')
	{
	  lineno++;
	  continue;
	}
      if (c != '#')
	goto skip_to_eol;
      c = FUNC4 (&buf, FUNC5 (' '));
      if (FUNC2 (&buf) == 0)
	;
      else if (!FUNC6 (buf.base, "ifndef")
	  || !FUNC6 (buf.base, "ifdef") || !FUNC6 (buf.base, "if"))
	{
	  if_nesting++;
	}
      else if (!FUNC6 (buf.base, "endif"))
	{
	  if_nesting--;
	  if (if_nesting == 0)
	    break;
	}
      else if (!FUNC6 (buf.base, "else"))
	{
	  if (if_nesting == 1)
	    return 0;
	}
      else if (!FUNC6 (buf.base, "define"))
	{
	  c = FUNC5 (c);
	  c = FUNC4 (&buf, c);
	  if (buf.base[0] > 0 && FUNC6 (buf.base, protect_name) == 0)
	    define_seen = 1;
	}
    skip_to_eol:
      for (;;)
	{
	  if (c == '\n' || c == EOF)
	    break;
	  c = FUNC0 ();
	}
      if (c == EOF)
	return 0;
      lineno++;
    }

  if (!define_seen)
     return 0;
  *endif_line = lineno;
  /* Skip final white space (including comments).  */
  for (;;)
    {
      c = FUNC5 (' ');
      if (c == EOF)
	break;
      if (c != '\n')
	return 0;
    }

  return 1;
}