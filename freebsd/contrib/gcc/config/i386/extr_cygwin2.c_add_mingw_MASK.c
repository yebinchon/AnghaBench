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
 int /*<<< orphan*/  CYGWIN_MINGW_SUBDIR ; 
 scalar_t__ FUNC0 (char) ; 
 char** cvt_to_mingw ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  char **av;
  char *p;
  for (av = cvt_to_mingw; *av; av++)
    {
      int sawcygwin = 0;
      while ((p = FUNC6 (*av, "-cygwin")))
	{
	  char *over = p + sizeof ("-cygwin") - 1;
	  FUNC2 (over + 1, over, FUNC5 (over));
	  FUNC1 (p, "-mingw32", sizeof("-mingw32") - 1);
	  p = ++over;
	  while (FUNC0 (*p))
	    p++;
	  FUNC4 (over, p);
	  sawcygwin = 1;
	}
      if (!sawcygwin && !FUNC6 (*av, "mingw"))
	FUNC3 (*av, CYGWIN_MINGW_SUBDIR);
    }
}