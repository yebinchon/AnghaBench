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
struct cleanup {int dummy; } ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 char** FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct cleanup* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * signal_print ; 
 int /*<<< orphan*/ * signal_program ; 
 int /*<<< orphan*/ * signal_stop ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (char *args, int from_tty)
{
  char **argv;
  struct cleanup *old_chain;

  /* Break the command line up into args. */

  argv = FUNC0 (args);
  if (argv == NULL)
    {
      FUNC5 (0);
    }
  old_chain = FUNC3 (argv);
  if (argv[1] != (char *) NULL)
    {
      char *argBuf;
      int bufLen;

      bufLen = FUNC9 (argv[0]) + 20;
      argBuf = (char *) FUNC12 (bufLen);
      if (argBuf)
	{
	  int validFlag = 1;
	  enum target_signal oursig;

	  oursig = FUNC10 (argv[0]);
	  FUNC4 (argBuf, 0, bufLen);
	  if (FUNC8 (argv[1], "Q") == 0)
	    FUNC7 (argBuf, "%s %s", argv[0], "noprint");
	  else
	    {
	      if (FUNC8 (argv[1], "s") == 0)
		{
		  if (!signal_stop[oursig])
		    FUNC7 (argBuf, "%s %s", argv[0], "stop");
		  else
		    FUNC7 (argBuf, "%s %s", argv[0], "nostop");
		}
	      else if (FUNC8 (argv[1], "i") == 0)
		{
		  if (!signal_program[oursig])
		    FUNC7 (argBuf, "%s %s", argv[0], "pass");
		  else
		    FUNC7 (argBuf, "%s %s", argv[0], "nopass");
		}
	      else if (FUNC8 (argv[1], "r") == 0)
		{
		  if (!signal_print[oursig])
		    FUNC7 (argBuf, "%s %s", argv[0], "print");
		  else
		    FUNC7 (argBuf, "%s %s", argv[0], "noprint");
		}
	      else
		validFlag = 0;
	    }
	  if (validFlag)
	    FUNC2 (argBuf, from_tty);
	  else
	    FUNC6 ("Invalid signal handling flag.\n");
	  if (argBuf)
	    FUNC11 (argBuf);
	}
    }
  FUNC1 (old_chain);
}