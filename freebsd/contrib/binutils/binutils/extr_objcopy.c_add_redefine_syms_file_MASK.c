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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (size_t) ; 
 char* FUNC10 (char*,size_t) ; 

__attribute__((used)) static void
FUNC11 (const char *filename)
{
  FILE *file;
  char *buf;
  size_t bufsize;
  size_t len;
  size_t outsym_off;
  int c, lineno;

  file = FUNC4 (filename, "r");
  if (file == NULL)
    FUNC3 (FUNC2("couldn't open symbol redefinition file %s (error: %s)"),
	   filename, FUNC8 (errno));

  bufsize = 100;
  buf = FUNC9 (bufsize);

  lineno = 1;
  c = FUNC6 (file);
  len = 0;
  outsym_off = 0;
  while (c != EOF)
    {
      /* Collect the input symbol name.  */
      while (! FUNC1 (c) && ! FUNC0 (c) && c != EOF)
	{
	  if (c == '#')
	    goto comment;
	  buf[len++] = c;
	  if (len >= bufsize)
	    {
	      bufsize *= 2;
	      buf = FUNC10 (buf, bufsize);
	    }
	  c = FUNC6 (file);
	}
      buf[len++] = '\0';
      if (c == EOF)
	break;

      /* Eat white space between the symbol names.  */
      while (FUNC1 (c))
	c = FUNC6 (file);
      if (c == '#' || FUNC0 (c))
	goto comment;
      if (c == EOF)
	break;

      /* Collect the output symbol name.  */
      outsym_off = len;
      while (! FUNC1 (c) && ! FUNC0 (c) && c != EOF)
	{
	  if (c == '#')
	    goto comment;
	  buf[len++] = c;
	  if (len >= bufsize)
	    {
	      bufsize *= 2;
	      buf = FUNC10 (buf, bufsize);
	    }
	  c = FUNC6 (file);
	}
      buf[len++] = '\0';
      if (c == EOF)
	break;

      /* Eat white space at end of line.  */
      while (! FUNC0(c) && c != EOF && FUNC1 (c))
	c = FUNC6 (file);
      if (c == '#')
	goto comment;
      /* Handle \r\n.  */
      if ((c == '\r' && (c = FUNC6 (file)) == '\n')
	  || c == '\n' || c == EOF)
	{
 end_of_line:
	  /* Append the redefinition to the list.  */
	  if (buf[0] != '\0')
	    FUNC7 (filename, &buf[0], &buf[outsym_off]);

	  lineno++;
	  len = 0;
	  outsym_off = 0;
	  if (c == EOF)
	    break;
	  c = FUNC6 (file);
	  continue;
	}
      else
	FUNC3 (FUNC2("%s:%d: garbage found at end of line"), filename, lineno);
 comment:
      if (len != 0 && (outsym_off == 0 || outsym_off == len))
	FUNC3 (FUNC2("%s:%d: missing new symbol name"), filename, lineno);
      buf[len++] = '\0';

      /* Eat the rest of the line and finish it.  */
      while (c != '\n' && c != EOF)
	c = FUNC6 (file);
      goto end_of_line;
    }

  if (len != 0)
    FUNC3 (FUNC2("%s:%d: premature end of file"), filename, lineno);

  FUNC5 (buf);
}