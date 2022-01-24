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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,int) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 char* FUNC7 (char const*) ; 

char *
FUNC8 (char **cmd, const char *defname)
{
  char *filename;
  char *fullname;

  /* FIXME: Need to get the ``/a(ppend)'' flag from somewhere.  */

  /* File.  */
  if ((*cmd) == NULL)
    {
      if (defname == NULL)
	FUNC0 ("Missing filename.");
      filename = FUNC7 (defname);
      FUNC2 (xfree, filename);
    }
  else
    {
      /* FIXME: should parse a possibly quoted string.  */
      char *end;

      (*cmd) = FUNC4 (*cmd);
      end = *cmd + FUNC5 (*cmd, " \t");
      filename = FUNC3 ((*cmd), end - (*cmd));
      FUNC2 (xfree, filename);
      (*cmd) = FUNC4 (end);
    }
  FUNC1 (filename != NULL);

  fullname = FUNC6 (filename);
  FUNC2 (xfree, fullname);
  
  return fullname;
}